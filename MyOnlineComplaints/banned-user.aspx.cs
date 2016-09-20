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
    public partial class WebForm27 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Approve")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];  // row which u have created..
                string id = row.Cells[1].Text;

                try
                {

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("update users set verified='True' where user_id=" + id + "", con);
                    cmd.ExecuteNonQuery();
                    con.Close();

                }
                catch (Exception ie)
                {
                    Response.Write("<script>alert('Error occured! Please try after some time!')</script>");

                }
                Response.Redirect("banned-user.aspx");
            }
        }
    }
}