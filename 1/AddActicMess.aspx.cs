using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;                                  
public partial class AddActicMess : System.Web.UI.Page
{
    ArctiInfoBLL abl = new ArctiInfoBLL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)  //添加
    {
        if (this.TextBox1.Text==""&&this.TextBox2.Text=="" && this.TextBox3.Text == "" && this.TextBox4.Text == "" )
        {
            Response.Write("<script>alert('不可以有空的输入')</script>");
        }
        else
        {
            bool b1 = abl.add(this.TextBox1.Text, this.TextBox2.Text, this.TextBox3.Text,DateTime.Now) ;
            if (b1)
            {
                Response.Write("<script>alert('添加成功')</script>");

            }
            else
            {
                Response.Write("<script>alert('添加失败')</script>");
            }
        }

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Main.aspx");
    }
}