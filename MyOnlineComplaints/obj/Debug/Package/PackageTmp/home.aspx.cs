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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                //new SqlConnection(@"Data Source=SQL5005.myASP.NET;Initial Catalog=DB_9F8C80_db;User Id=DB_9F8C80_db_admin;Password=lilesh94;");
                con.Open();
                SqlCommand cmd = new SqlCommand("select user_name from users where user_id='" + Session["userid"] + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {

                    Label1.Text = (dt.Rows[0][0]).ToString();

                   
                }
                else
                {
                    Label1.Text = "user";
                }
                con.Close();
            }
          catch(Exception ie)
            {

            }
        }
    }
}