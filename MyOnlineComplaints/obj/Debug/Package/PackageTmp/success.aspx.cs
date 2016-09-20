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
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select MAX(complaint_id) from complaints where user_id=" + Session["userid"] + "", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {

                    Label1.Text = (dt.Rows[0][0]).ToString();
                    
                    
                }
                else
                {
                    Label1.Text = "0";
                }
                con.Close();
            }
            catch(Exception ie)
            {

            }
        }
    }
}