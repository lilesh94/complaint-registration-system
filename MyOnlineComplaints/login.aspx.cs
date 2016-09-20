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
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["userid"]!=null)
            {
                Response.Redirect("home.aspx");
            }
            else
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from users where user_email='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {

                    Session["userid"] = (dt.Rows[0][5]).ToString();
                    Session["username"] = (dt.Rows[0][0]).ToString();
                    Session["verified"] = (dt.Rows[0][3]).ToString();
                    Session["type"] = (dt.Rows[0][4]).ToString();
                    String type = Convert.ToString(Session["type"]);
                    String verified = Convert.ToString(Session["verified"]);

                    if (type.Equals("station") && verified.Equals("True"))
                    {
                        Response.Redirect("stn-home.aspx");
                    }
                    else if (type.Equals("user") && verified.Equals("True"))
                    {
                        Response.Redirect("home.aspx");
                    }
                    else if (type.Equals("admin"))
                    {
                        Response.Redirect("admin.aspx");
                    }
                    else
                    {
                        Response.Redirect("error.aspx");
                    }
                }
                else
                {
                    Image1.ImageUrl="Assets/error-login.png";
                    Label1.Text = "Incorrect Email or Password!";
                    //Response.Write("<script>alert('Please enter valid Username and Password')</script>");
                }
                con.Close();
            }
            catch (Exception ie)
            {
                Image1.ImageUrl = "Assets/error-login.png";
                Label1.Text = "Incorrect Email or Password!";
            }
                
                
                
        }
    }
}