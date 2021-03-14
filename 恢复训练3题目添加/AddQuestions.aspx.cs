using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
public partial class AddQuestions : System.Web.UI.Page
{
    CourseBLL cbl = new CourseBLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            kem();
            xueq();
        }
    }
    public void jiaz()
    {
         
    }
    public void kem()
    {
        this.DropDownList2.DataSource = cbl.ddlist();
        this.DropDownList2.DataTextField = "CourseName";
        this.DropDownList2.DataValueField = "CourseID";
        this.DropDownList2.DataBind();
    }
    public void xueq()
    {
        this.DropDownList1.DataSource = cbl.ddlist();
        this.DropDownList1.DataTextField = "Semester";
        this.DropDownList1.DataValueField = "CourseID";
        this.DropDownList1.DataBind();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(this.DropDownList1.SelectedValue);
        string answer = (this.DropDownList3.SelectedValue);
        bool b1 = cbl.zj(id, this.TextBox1.Text, this.TextBox2.Text, this.TextBox3.Text, this.TextBox4.Text, this.TextBox5.Text, answer);
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