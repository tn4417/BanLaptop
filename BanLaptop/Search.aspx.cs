using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanLaptop
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
           
        }

        protected void btbSearch_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["QL_DTDD1ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            string key = txtKeySearch.Text;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from SanPham where TenSp like '%' + @TenSP + '%'";
            cmd.Connection = con;

            SqlParameter Par1 = cmd.CreateParameter();
            Par1.ParameterName = "@TenSP";
            Par1.Value = txtKeySearch.Text;
            cmd.Parameters.Add(Par1);

            con.Open();
            
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            da.SelectCommand = cmd;
            da.Fill(dt);
            
            DataList1.DataSource = dt;
            DataList1.DataBind();

            con.Close();
        }
    }
}