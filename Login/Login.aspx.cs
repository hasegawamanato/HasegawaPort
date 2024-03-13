
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        private void SelectData()
        {
            string userId = (string)Session["EditUserId"];
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(strCon);
            con.Open();

            try
            {
                string selectCommand = "SELECT UserId,Password,mail,name FROM User_Login WHERE UserId='{0}'";
                selectCommand = string.Format(selectCommand, userId);

                SqlDataAdapter da = new SqlDataAdapter(selectCommand, con);
                DataSet ds = new DataSet();
                da.Fill(ds);

                TextBox1.Text = (string)ds.Tables[0].Rows[0]["UserId"];
                TextBox3.Text = (string)ds.Tables[0].Rows[0]["Password"];
                TextBox5.Text = (string)ds.Tables[0].Rows[0]["mail"];
                TextBox6.Text = (string)ds.Tables[0].Rows[0]["name"];

                TextBox1.ReadOnly = true;
            }
            finally
            {
                con.Close();
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            try
            {
                string insertCommand = "INSERT INTO User_Login(UserId,Password,mail,name)VALUES('{0}',N'{1}',N'{2}',N'{3}');";
                insertCommand = string.Format(insertCommand, TextBox1.Text, TextBox3.Text, TextBox5.Text,TextBox6.Text);

                using (SqlCommand cmd = new SqlCommand(insertCommand, con))
                {
                    cmd.ExecuteNonQuery();
                }
            }
            finally
            {
                con.Close();
            }
            Server.Transfer("Login2.aspx");
        }
    }
}
