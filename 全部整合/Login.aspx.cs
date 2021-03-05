using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
public partial class Login : System.Web.UI.Page
{
        TypeBLL Tbl = new TypeBLL();
       UserBLL Ubl = new UserBLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("你是第" + Application["Visited"].ToString() + "位访客<BR>当前在线" + Application["UserNum"].ToString() + "人");
        jiaz();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Boolean b1 = Ubl.dl(this.TextBox1.Text,this.TextBox2.Text);
        if (b1)
        {
            Response.Write("<script>alert('登录成功')</script>");
            Response.Redirect("Test.aspx");
        }
        else
        {
            Response.Write("<script>alert('登录失败')</script>");
        }
    }
    public void jiaz()
    {
        this.DdList.DataSource = Tbl.Type();
        this.DdList.DataTextField = "TypeName";
        this.DdList.DataValueField = "TypeId";
        this.DdList.DataBind();
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        int type = int.Parse(this.DdList.SelectedValue);
        string hobyy = "";
        if (this.CbList.Items[0].Selected)
        {
            hobyy += "唱歌";
        }
        if (this.CbList.Items[1].Selected)
        {
            hobyy += "跳舞";
        }
        if (this.CbList.Items[2].Selected)
        {
            hobyy += "打篮球";
        }

        string Sex = "";
        if (this.RadioButtonList1.SelectedValue.Equals("男"))
        {
            Sex = "男";
        }
        else
        {
            Sex = "女";
        }
        string picture = "";
        if (this.FileUpload1.HasFile)
        {
            picture = FileUpload1.FileName;
            if (picture.Contains("jpg")|| picture.Contains("png")|| picture.Contains("PNG"))
            {
                string path = Server.MapPath("//Image//"+picture);
                FileUpload1.SaveAs(path);
            }
            else
            {
                Response.Write("<script>alert('文件类型不正确')</script>");
                Response.End();                 
            }
        }
        else
        {
            Response.Write("<script>alert('没有上传文件')</script>");
        }
       
        Boolean b2 = Ubl.zc(this.TextBox1.Text, this.TextBox2.Text,picture,Sex,hobyy,type);
        if (b2)
        {
            Response.Write("<script>alert('注册成功')</script>");
        }
        else
        { 
            Response.Write("<script>alert('注册失败')</script>");
        }
    }
}