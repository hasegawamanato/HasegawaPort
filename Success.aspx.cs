using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login
{
    public partial class Success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("AdminPCdata.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("PCadd.aspx");
        }
    }
}