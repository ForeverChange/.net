using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
public partial class Login : System.Web.UI.Page
{
    UserInfoBLL ubl = new UserInfoBLL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = ubl.Login(this.TextBox1.Text,this.TextBox2.Text);
        if (dt.Rows.Count > 0 )
        {
            Session["name"] = this.TextBox1.Text;
            Response.Redirect("Main.aspx");
        }
        else
        {
            Response.Write("密码错误");
        }
    }
}