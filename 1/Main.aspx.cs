using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
public partial class Main : System.Web.UI.Page
{
    ArctiInfoBLL abl = new ArctiInfoBLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            welcomeName();
            show();
            
        }
    }
    public void show()  //显示grv数据
    {
        this.GridView1.DataSource = abl.show();
        this.GridView1.DataBind();
    }
    public void welcomeName()
    {
        this.Label1.Text = Session["name"].ToString();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName=="del")
        {
            int a = int.Parse(e.CommandArgument.ToString());   //找到下标
            bool b1 = abl.del(a);
            if (b1)
            {
                Response.Write("<script>alert('删除成功')</script>");
                show();
            }
            else
            {
                Response.Write("<script>alert('删除失败')</script>");
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddActicMess.aspx");
    }
}