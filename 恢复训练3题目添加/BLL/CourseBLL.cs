using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;

namespace BLL
{
  public  class CourseBLL
    {
        CourseDAL cdl = new CourseDAL();
        public DataTable ddlist()  //显示
        {
           
            return cdl.ddlist();
        }
        public bool zj(int id, string title, string a, string b, string c, string d, string answer)
        {
            int i = cdl.zj(id, title, a, b, c, d, answer);
            if (i>0)
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
