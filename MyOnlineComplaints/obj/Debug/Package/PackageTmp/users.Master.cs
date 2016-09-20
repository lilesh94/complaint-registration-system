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
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;


namespace MyOnlineComplaints
{
    public partial class users : System.Web.UI.MasterPage
    {
        public string imageurl = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();

            if (Session["userid"]!=null ) // if the user is already logged in
            {
                if(Convert.ToString(Session["type"]).Equals("user"))
                {

                }
                else if (Convert.ToString(Session["type"]).Equals("admin"))
                {
                    Response.Redirect("admin.aspx");
                }
                else
                {
                    Response.Redirect("stn-home.aspx");
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
             
            /*
            if (Request.QueryString["ImageID"] != null)
            {
                try{
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                    //new SqlConnection(@"Data Source=SQL5005.myASP.NET;Initial Catalog=DB_9F8C80_db;User Id=DB_9F8C80_db_admin;Password=lilesh94;");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from photos where user_id=" + Session["userid"] + "", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Byte[] bytes = (Byte[])dt.Rows[0][1];
                    Response.Buffer = true;

            Response.Charset = "";

            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "image/jpg";
           Response.AddHeader("content-disposition", "attachment;filename=" + dt.Rows[0][0].ToString());
            Response.BinaryWrite(bytes);

            Response.Flush();

            Response.End();
            Response.Redirect("default.aspx");
                }
                else
                {

                }
                }
                catch(Exception ie){

                }

            }
             */

           
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from photos where user_id=" + Session["userid"] + "", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                  
                imageurl = "photos/" + (dt.Rows[0][1]).ToString();
                   
                }
                else
                {
                    
                 imageurl = "photos/default-img.png";
                }
                con.Close();
            }
            catch (Exception ie)
            {
               
            }
                  
                  
                   
            
        }

       
    }
}