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
    public partial class WebForm22 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void update_status(object sender, EventArgs e)
        {/*
            try
            {
                String status= ((TextBox)GridView1.FooterRow.FindControl("status")).Text;
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("update complaints set status='"+status+"' ", con);
                cmd.ExecuteNonQuery();
                con.Close();

            }
            catch (Exception ie)
            {

            }
          * */
        }
    }
}