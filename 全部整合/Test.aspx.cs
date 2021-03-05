using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
public partial class Test : System.Web.UI.Page
{
    GoodsBLL GBl = new GoodsBLL();
    TypeInfoBLL tbl = new TypeInfoBLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            jiazGridview();
            ddlist();
        }
    }
    public void jiazGridview() //加载gridview
    {
        this.GridView1.DataSource = GBl.xians("",0);
        this.GridView1.DataBind();
    }
    public void ddlist()//显示下拉框
    {
        this.DropDownList1.DataTextField = "TypeName";
        this.DropDownList1.DataValueField = "TypeId";      
        this.DropDownList1.DataSource = tbl.Ddlist();
        this.DropDownList1. DataBind();
        this.DropDownList1.Items.Insert(0, new ListItem("全部", "0"));
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //找到主键
        int Id = int.Parse(this.GridView1.DataKeys[e.RowIndex].Value.ToString());
        bool b1 = GBl.Del(Id);
        if (b1)
        {
            Response.Write("<script>alert('删除456成功')</script>");
            jiazGridview();
        }
        else
        {
            Response.Write("<script>alert('删除失败')</script>");
        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex; //换页不报错
        jiazGridview();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName=="del")
        {
          int a=int.Parse(  e.CommandArgument.ToString());
            bool b1 = GBl.Del(a);
            if (b1)
            {
                Response.Write("<script>alert('删除123成功')</script>");
            }
            else
            {
                Response.Write("<script>alert('删除失败')</script>");
            }
        }
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int id = int.Parse(this.GridView1.DataKeys[e.RowIndex]["Id"].ToString());
        int Stock = int.Parse(e.NewValues["Stock"].ToString());
        bool b1 = GBl.modify(Stock,id);
        if (b1)
        {
            Response.Write("<script>alert('修改成功')</script>");
            jiazGridview();
        }
        else
        {
            Response.Write("<script>alert('修改失败')</script>");
        }
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Session["ID"] = this.GridView1.DataKeys[e.NewEditIndex]["Id"].ToString();
        Label GoodsName = (Label)this.GridView1.Rows[e.NewEditIndex].FindControl("Label3");
        TextBox Price = (TextBox)this.GridView1.Rows[e.NewEditIndex].FindControl("TextBox2");
        TextBox mPrice = (TextBox)this.GridView1.Rows[e.NewEditIndex].FindControl("TextBox3");
        TextBox Stock = (TextBox)this.GridView1.Rows[e.NewEditIndex].FindControl("TextBox1");
        Session["GoodsName"] = GoodsName.Text;
        Session["Price"] = Price.Text;
        Session["mPrice"] = mPrice.Text;
        Session["Stock"] = Stock.Text;
        Response.Redirect("ByGoods.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        int id =int.Parse(this.DropDownList1.SelectedValue);
        string name =this.TextBox4.Text;
         DataTable dt= GBl.xians(name,id);
        this.GridView1.DataSource = dt;
         this.GridView1.DataBind();
    }
}