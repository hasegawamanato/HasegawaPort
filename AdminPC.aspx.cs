﻿using System;
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            Server.Transfer("AdminPCdata.aspx");
        }
    }
}