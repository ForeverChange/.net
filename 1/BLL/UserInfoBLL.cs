using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;
namespace BLL
{
    public class UserInfoBLL
    {
        
        UserInfoDAL udl = new UserInfoDAL();
        public DataTable Login(string name, string pwd)   //登录
        {
            DataTable dt = udl.Login(name,pwd);
            return dt;
        }
    
    }
}
