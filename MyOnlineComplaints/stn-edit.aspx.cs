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
    public partial class WebForm18 : System.Web.UI.Page
    {
        String name;
        String addr;
        String mail;
        String phone;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            if (IsPostBack)
            {

            }
            else
            {


                try
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from station_details where user_id=" + Session["userid"] + "", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);

                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        addr = (dt.Rows[0][1]).ToString();
                        mail = (dt.Rows[0][2]).ToString();
                        phone = (dt.Rows[0][3]).ToString();
                        name = (dt.Rows[0][4]).ToString();
                    }
                    con.Close();

                }
                catch (Exception ie)
                {

                }

                Label1.Text = name;
                TextBox1.Text = addr;
                TextBox2.Text = phone;
                TextBox3.Text = mail;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("update station_details set address='"+TextBox1.Text+"', email='"+TextBox3.Text+"', landline='"+TextBox2.Text+"' where user_id="+Session["userid"]+"", con);
                cmd.ExecuteNonQuery();
                con.Close();

                Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmesg", "<script language=javascript> alert('Edited Successfully.');</script>");
                

            }
            catch (Exception ie)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmesg", "<script language=javascript> alert('Error Occured!!! Please try again later.');</script>");
            }
        }
    }
}