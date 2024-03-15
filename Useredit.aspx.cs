using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login
{
    public partial class Useredit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // URL パラメータから情報を取得してテキストボックスに表示
                string userId = Request.QueryString["UserId"];
                string name = Request.QueryString["Name"];
                string mail = Request.QueryString["Mail"];

                TextBox1.Text = userId;
                TextBox2.Text = name;
                TextBox3.Text = mail;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // データベースのレコードを更新する
            string userId = TextBox1.Text;
            string name = TextBox2.Text;
            string mail = TextBox3.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "UPDATE User_Login SET Name = @Name, mail = @Mail WHERE UserId = @UserId";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@UserId", userId);
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Mail", mail);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            Server.Transfer("Usersuc.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("AdminUser.aspx");
        }
    }
}