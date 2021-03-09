using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
namespace DAL
{
    public class UserInfoDAL
    {
        DBHelper db = new DBHelper();
        public DataTable Login(string name , string pwd) // 登录
        {
            string sql = string.Format("select * from UserInfo where UserName= '{0}' and Pwd =  '{1}' " , name , pwd);
            DataTable dt = db.cx(sql) ;
            return dt;
        }
    
    }
}
