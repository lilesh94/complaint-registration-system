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
    public partial class WebForm19 : System.Web.UI.Page
    {
        string filename;
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
                
                
                /*PHOTO UPLOAD GOES HERE */
                if (photo.HasFile)
                {
                    string type = System.IO.Path.GetExtension(photo.FileName);

                    filename = TextBox1.Text + "-wanted" + type;

                    photo.SaveAs(Server.MapPath("~/wanted/") + filename);

                }
                else
                {
                    filename = "default-wanted.jpg";
                }

                SqlCommand cmd = new SqlCommand("insert into wanted values('" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','"+filename+"')", con);
                cmd.ExecuteNonQuery();
              

                con.Close();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmesg", "<script language=javascript> alert('Details Added!');</script>");
                

            }
            catch (Exception ie)
            {
               // Label1.Text = ie.Message;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmesg", "<script language=javascript> alert('Error Occured!!! Sorry!');</script>");
                
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
            TextBox7.Text = "";
            TextBox1.Focus();
        }
    }
}