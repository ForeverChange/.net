using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
public partial class _Default : System.Web.UI.Page
{
    billBLL bbl = new billBLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            jiaz();
        }
    }
    public void jiaz()
    {
        this.GridView1.DataSource = bbl.show();
        this.GridView1.DataBind();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName=="del")
        {
            int a = int.Parse(e.CommandArgument.ToString()) ;
            bool b1 = bbl.del(a);
            if (b1)
            {
                Response.Write("<script>alert('删除成功')<script>");
                jiaz();
            }
            else
            {
                Response.Write("<script>alert('删除失败')<script>");
            }
        }
    }
}