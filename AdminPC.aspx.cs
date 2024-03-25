using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Schema;

namespace Login
{
    public partial class AdminPC : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("AdminHome.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("PCadd.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("AdminUser.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Server.Transfer("AdminPCdata.aspx");
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            Server.Transfer("Login3.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Server.Transfer("AdminUser.aspx");
        }
    }
}