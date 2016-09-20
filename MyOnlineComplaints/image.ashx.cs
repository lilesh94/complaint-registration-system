using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyOnlineComplaints
{
    /// <summary>
    /// Summary description for image
    /// </summary>
    public class image : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("Hello World");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}