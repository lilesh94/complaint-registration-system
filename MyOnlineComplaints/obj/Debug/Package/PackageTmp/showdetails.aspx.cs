using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyOnlineComplaints
{
    public partial class showdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["type"]).Equals("station") || Convert.ToString(Session["type"]).Equals("admin"))
            {

            }
            else
            {
                Response.Redirect("error.aspx");
            }
        }
    }
}