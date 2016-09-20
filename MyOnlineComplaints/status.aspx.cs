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
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string item = e.Row.Cells[0].Text;
                foreach (ImageButton button in e.Row.Cells[6].Controls.OfType<ImageButton>())
                {
                    if (button.CommandName == "Delete")
                    {
                        button.Attributes["onclick"] = "if(!confirm('Do you want to delete Complaint ID: " + item + " ?')){ return false; };";
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
                SqlCommand cmd = new SqlCommand("delete from complaints where complaint_id=" + id + "", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("status.aspx");
            }
            catch (Exception ie)
            {
                Response.Write("<script>alert('Error occured! Please try after some time!')</script>");
                
            }
            Response.Redirect("status.aspx");
        }

    }
}