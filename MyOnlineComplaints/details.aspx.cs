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
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                
                con.Open();
                SqlCommand cmd = new SqlCommand("select user_name from users where user_id='" + Session["userid"] + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {

                    Label11.Text = (dt.Rows[0][0]).ToString();


                }
                else
                {
                    Label11.Text = "user";
                }
                con.Close();
            }
            catch (Exception ie)
            {

            }
        }

        protected void byear_SelectedIndexChanged(object sender, EventArgs e)
        {
            string s = bmonth.Text + "/" + bdate.Text + "/" + byear.Text;
            DateTime dob = Convert.ToDateTime(s);
            DateTime currentdate = Convert.ToDateTime(DateTime.Now);
            TimeSpan time = currentdate.Subtract(dob);
            int total = (time.Days) / 365;
            age.Text = total.ToString();
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string s = bmonth.Text + "/" + bdate.Text + "/" + byear.Text;
            DateTime dob = Convert.ToDateTime(s);
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into user_details values(" + Session["userid"] + ",'" + gender.Text + "','" + add.Text + "'," + mob.Text + "," + altmob.Text + ",'" + altemail.Text + "','" + dob + "'," + age.Text + ",'" + aadhar.Text + "')", con);
                cmd.ExecuteNonQuery();

                /*PHOTO UPLOAD GOES HERE */
                string type = System.IO.Path.GetExtension(photo.FileName);
                string uid = Convert.ToString(Session["userid"]);
                SqlCommand cmdd = new SqlCommand("select user_name from users where user_id=" + Session["userid"] + "", con);
                SqlDataAdapter da = new SqlDataAdapter(cmdd);

                DataTable dt = new DataTable();
                da.Fill(dt);
                string uname = (dt.Rows[0][0]).ToString();
                string filename = uname + "-" + uid + type;

                photo.SaveAs(Server.MapPath("~/photos/") + filename);


                SqlCommand cmddd = new SqlCommand("insert into photos values("+ Session["userid"] +",'"+filename+"')", con);
                cmddd.ExecuteNonQuery();

                con.Close();
                Response.Redirect("file-complaints.aspx");
            }
            catch (Exception ie)
            {
                
                Response.Write("<script>alert('Error Occured!!! Sorry!')</script>");
            }
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            mob.Text = "";
            altmob.Text="";
            altemail.Text = "";
            age.Text="";
            aadhar.Text = "";
            mob.Focus();

        }
    }
}