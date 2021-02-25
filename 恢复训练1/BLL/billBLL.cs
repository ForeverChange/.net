using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;
namespace BLL
{
    public class billBLL
    {
        billDAL bdl = new billDAL();
        public DataTable show() //显示的bll
        {
            return bdl.show(); ;
        }
        public bool del(int id)
        {
            int a = bdl.del(id);
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
