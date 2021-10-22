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
    public partial class ProductDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string conStr = ConfigurationManager.ConnectionStrings["QL_DTDD1ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from SanPham where MaSP=@MaSP";
                cmd.Connection = con;

                con.Open();
                SqlParameter Par = cmd.CreateParameter();
                Par.ParameterName = "@MaSP";
                Par.Value = Request.QueryString["msp"].ToString();
                cmd.Parameters.Add(Par);

                SqlDataAdapter da = new SqlDataAdapter();
                DataTable dt = new DataTable();
                da.SelectCommand = cmd;
                da.Fill(dt);
                FormView1.DataSource = dt;
                FormView1.DataBind();

                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }
        protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName == "DATMUA")
            {
                Response.Redirect("~/Cart.aspx?masp=" + e.CommandArgument.ToString());
            }
        }
    }
}