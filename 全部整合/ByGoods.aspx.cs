using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
public partial class ByGoods : System.Web.UI.Page
{
    memberBLL mbl = new memberBLL();
    GoodsBLL gbl = new GoodsBLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        xians();
    }
    public void xians()
    {
        this.Label2.Text = Session["GoodsName"].ToString();
        this.Label4.Text = Session["Price"].ToString();
        this.Label6.Text = Session["mPrice"].ToString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int id= int.Parse(  Session["ID"].ToString());
        int num1 = int.Parse(this.TextBox2.Text.ToString());
        int stock = int.Parse(Session["Stock"].ToString())-num1;
        
        bool  b1 = gbl.By(stock,num1 , id);
        if (b1)
        {
            Response.Write("<script>alert('购买成功');window.location.href='http://localhost:59190/Test.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('购买失败')</script>");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
              DataTable dt=   mbl.member(int.Parse( this.TextBox1.Text.ToString()));
        if (dt.Rows.Count>0)
        {
            this.Label9.Text = dt.Rows[0]["mName"].ToString();
        }
        else
        {
            Response.Write("<script>alert('查无此人')</script>");
        }
    }
}