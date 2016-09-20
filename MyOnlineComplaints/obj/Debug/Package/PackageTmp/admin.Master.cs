using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyOnlineComplaints
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();

            if (Session["userid"] != null) // if the user is already logged in
            {
                if (Convert.ToString(Session["type"]).Equals("user"))
                {
                    Response.Redirect("home.aspx");
                }
                else if (Convert.ToString(Session["type"]).Equals("admin"))
                {
                    
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
        }
    }
}