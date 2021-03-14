using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace DAL
{
   public  class DBHelper
    {
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=恢复训练题目添加;Integrated Security=True");
        public DataTable cx(string sql)
        {
            SqlDataAdapter sdr = new  SqlDataAdapter(sql,con);
            DataTable dt = new DataTable();
            sdr.Fill(dt);
            return dt;
        }

        public int zsg(string sql)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(sql,con);
            int a = cmd.ExecuteNonQuery();
            con.Close();
            return a;
        }
    }
}
