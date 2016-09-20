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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            if (Session["userid"] != null)
            {
                Response.Redirect("home.aspx");
            }
            else
            {

            }
          
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into users values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + "True" + "','" + "user" + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("verified.aspx");
                }
                catch (Exception ie)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmesg", "<script language=javascript> alert('Error Occured!!! Cannot Register. Sorry!');</script>");
               
                   
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmesg", "<script language=javascript> alert('Please agree to Disclaimer!');</script>");
               
            }
        }
        protected void cValidator(object source, ServerValidateEventArgs args)
        {
            args.IsValid = CheckBox1.Checked;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox1.Focus();
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from users where user_email='" + TextBox2.Text + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    args.IsValid=false;
                    
                }
                else
                {
                    args.IsValid = true;
                }
                con.Close();
            }
            catch (Exception ie)
            {
               
            }
        }
    }
}