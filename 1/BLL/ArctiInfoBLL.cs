using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;
namespace BLL
{
  public  class ArctiInfoBLL
    {
        ArctiInfoDAL adl = new ArctiInfoDAL();
        public DataTable show() //显示
        {
            DataTable dt = adl.show();
            return dt;
        }

        public bool del(int id)  //删除
        {
        
            int a = adl.del(id);
            if (a>0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool add(string title, string maincontent, string author, DateTime time) //添加
        {
            int a = adl.add(title, maincontent, author, DateTime.Now);
            if (a > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
