using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Login
{
    public partial class UserInfoChange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // セッションからユーザー名を取得
                string username = Session["Username"]?.ToString();

                if (!string.IsNullOrEmpty(username))
                {
                    // データベースからユーザー情報を取得
                    GetUserInformation(username);
                }
                else
                {
                    // ユーザー名がセッションに保存されていない場合は、ログインページにリダイレクトするなどの処理を行う
                    Response.Redirect("Login.aspx");
                }
            }
        }

        private void GetUserInformation(string username)
        {
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(strCon))
            {
                con.Open();
                string selectCommand = "SELECT * FROM User_Login WHERE UserId=@UserId";
                using (SqlCommand cmd = new SqlCommand(selectCommand, con))
                {
                    cmd.Parameters.AddWithValue("@UserId", username);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            // ユーザー情報をTextBoxに表示
                            TextBox1.Text = reader["UserId"].ToString();
                            TextBox2.Text = reader["Password"].ToString();
                            TextBox3.Text = reader["mail"].ToString();
                            TextBox4.Text = reader["name"].ToString();
                        }
                    }
                }
            }
        }

        private void UpdateUserInformation()
        {
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(strCon))
            {
                con.Open();
                string updateCommand = "UPDATE User_Login SET Password=@Password, mail=@mail, name=@name WHERE UserId=@UserId";
                using (SqlCommand cmd = new SqlCommand(updateCommand, con))
                {
                    cmd.Parameters.AddWithValue("@UserId", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@mail", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@name", TextBox4.Text);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            UpdateUserInformation();
            Server.Transfer("UserInfoChange2.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("Welcome.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}
