using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
namespace DAL
{
   public class ArctiInfoDAL
    {
        DBHelper db = new DBHelper();
        public DataTable show() //显示
        {
            string sql = string.Format("SELECT [ArticID],[ArticTitle],[MainContent],[AuthorName],[IsReview],[Createtime]FROM [dbo].[ArticInfo]");
            return db.cx(sql);
        }
        public int del(int id)  //删除
        {
            string sql = string.Format("DELETE FROM [dbo].[ArticInfo]WHERE ArticID='{0}'",id);
            int a= db.zsg(sql);
            return a;
        }
        public int add(string title,string maincontent,string author,DateTime time) //添加
        {
            string sql = string.Format("INSERT INTO [dbo].[ArticInfo]([ArticTitle],[MainContent],[AuthorName],[Createtime],[IsReview])VALUES('{0}','{1}','{2}','{3}','0' )", title,maincontent, author,DateTime.Now);
            int a = db.zsg(sql);
            return a;
        }
    }
}
