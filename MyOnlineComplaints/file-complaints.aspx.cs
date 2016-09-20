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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

                con.Open();
                SqlCommand cmd = new SqlCommand("select user_id from user_details where user_id=" + Session["userid"] + "", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >0)
                {

                    


                }
                else
                {
                    Response.Redirect("details.aspx");
                }
                con.Close();
            }
            catch (Exception ie)
            {

            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue.Equals("Other"))
            {
                other_station.Enabled = true;

            }
            else
            {
                other_station.Enabled = false;
                other_station.Text = "";
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string s = date.Text;
            DateTime indate = Convert.ToDateTime(s);
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into complaints(user_id, nature, station, other_station, subject, incident_address, incident_date, complaint, reg_date) values(" + Session["userid"] + ",'" + DropDownList2.SelectedValue + "','" + DropDownList1.SelectedValue + "','" + other_station.Text + "','" + subject.Text + "','" + address.Text + "','" + indate + "','" + complaint.Text + "','" + DateTime.Now + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("success.aspx");
            }
            catch (Exception ie)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmesg", "<script language=javascript> alert('Error Occured!!! Cannot Register. Sorry!');</script>");
                
            }
        }

       
        
    }
}