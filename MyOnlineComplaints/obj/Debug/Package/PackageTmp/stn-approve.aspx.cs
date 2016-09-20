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
    public partial class WebForm24 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string item = e.Row.Cells[1].Text;
                foreach (ImageButton button in e.Row.Cells[5].Controls.OfType<ImageButton>())
                {
                    if (button.CommandName == "Delete")
                    {
                        button.Attributes["onclick"] = "if(!confirm('Do you want to delete Station: " + item + " ?')){ return false; };";
                    }
                }
            }
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from users where user_id=" + id + "", con);
                cmd.ExecuteNonQuery();
                con.Close();
                
            }
            catch (Exception ie)
            {
                Response.Write("<script>alert('Error occured! Please try after some time!')</script>");

            }
            Response.Redirect("stn-approve.aspx");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Approve")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];  // row which u have created..
                string id = row.Cells[0].Text;
                string stn = row.Cells[1].Text;
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
                Response.Redirect("stn-approve.aspx");
            }
        }
    }
}