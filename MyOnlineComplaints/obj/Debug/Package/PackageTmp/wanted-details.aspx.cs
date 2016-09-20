using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;
using System.Data;
using System.Data.SqlClient;

namespace MyOnlineComplaints
{
    public partial class wanted_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select photo from wanted where id="+Request.QueryString["id"]+"", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {

                    Image1.ImageUrl = "wanted/" + (dt.Rows[0][0]).ToString();
                }
                else
                {
                    Image1.ImageUrl = "wanted/default-wanted.jpg";
                   
                }
                con.Close();
            }
            catch (Exception ie)
            {

            }
        }
    }
}