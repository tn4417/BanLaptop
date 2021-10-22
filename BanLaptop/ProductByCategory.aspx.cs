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
    public partial class ProductByCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string conStr = ConfigurationManager.ConnectionStrings["QL_DTDD1ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from SanPham where MaLoai=@MaLoai";
                cmd.Connection = con;

                con.Open();
                SqlParameter Par = cmd.CreateParameter();
                Par.ParameterName = "@MaLoai";
                Par.Value = Request.QueryString["ml"].ToString();
                cmd.Parameters.Add(Par);

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
}