using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
namespace DAL
{
    public class billDAL
    {
        DBHelper db = new DBHelper();
        public DataTable show()  //显示
        {
            string sql = string.Format("select * from bill");
            DataTable dt = db.cx(sql);
            return dt;
        }

        public  int del(int id)
        {
            string sql = string.Format("delete from bill where id='{0}' ",id);
            int a = db.zsg(sql);
            return a;
        }
    }
}
