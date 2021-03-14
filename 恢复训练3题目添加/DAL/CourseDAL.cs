using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
   public  class CourseDAL
    {
        DBHelper db = new DBHelper();
        public DataTable ddlist()  //显示
        {
            string sql = string.Format("select *  from Course ");
            return db.cx(sql) ;
        }
        public  int zj(int id,string title,string a,string b,string c,string d,string answer)
        {
            string sql = string.Format("INSERT INTO [dbo].[Question]([CourseID],[Title],[OptionA],[OptionB],[OptionC],[OptionD],[Answer])VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}')",id,title,a,b,c,d,answer );
            int i = db.zsg(sql);  
            return i;
        }
    }
}
