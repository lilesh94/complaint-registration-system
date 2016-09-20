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
    public partial class WebForm13 : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                con.Open();
                SqlCommand cmdd = new SqlCommand("insert into users values('" + TextBox1.Text + "','" + TextBox4.Text + "','" + TextBox5.Text+"','" + "False" + "','" + "station" + "')", con);
                cmdd.ExecuteNonQuery();
                SqlCommand cmd = new SqlCommand("select * from users where user_email='" + TextBox4.Text + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {

                  
                  id = Convert.ToInt32((dt.Rows[0][5]));
                
                }
                
                SqlCommand cm = new SqlCommand("insert into station_details values("+ id +",'" + TextBox2.Text + "','" + TextBox4.Text + "',"+TextBox3.Text+",'"+ TextBox1.Text +"')", con);
                cm.ExecuteNonQuery();

                con.Close();
                Response.Redirect("reg-success.aspx");
            }
            catch (Exception ie)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmesg", "<script language=javascript> alert('Error Occured!!! Cannot Register. Sorry!');</script>");
              
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox1.Focus();

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from users where user_email='" + TextBox4.Text + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    args.IsValid = false;

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