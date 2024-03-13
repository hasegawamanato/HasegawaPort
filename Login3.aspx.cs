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
    public partial class Login3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        private bool ValidateUser(string username, string password)
        {
            // データベースからユーザー情報を取得し、提供されたユーザー名とパスワードが一致するか確認する
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strCon))
            {
                if (username == "admin" && password == "12345678")
                {
                    Server.Transfer("AdminHome.aspx");
                    return true;
                }
                con.Open();
                string selectCommand = "SELECT COUNT(*) FROM User_Login WHERE UserId=@UserId AND Password=@Password";
                using (SqlCommand cmd = new SqlCommand(selectCommand, con))
                {
                    cmd.Parameters.AddWithValue("@UserId", username);
                    cmd.Parameters.AddWithValue("@Password", password);
                    int count = (int)cmd.ExecuteScalar();
                    return count > 0;
                }
            }
        }

        protected void LoginButton_Click1(object sender, EventArgs e)
        {
            string username = UserNameTextBox.Text;
            string password = PasswordTextBox.Text;

            // ユーザー名とパスワードをデータベースと比較し、一致するユーザーが存在するか確認する
            if (ValidateUser(username, password))
            {
                // ログインに成功した場合、セッションにユーザー名を保存するなどの処理を行う
                Session["Username"] = username;
                // 他のページにリダイレクトするなど、適切な処理を行う
                Response.Redirect("Welcome.aspx");
            }
            else
            {
                // ログインに失敗した場合はエラーメッセージを表示するなどの処理を行う
                ErrorMessageLabel.Text = "登録されたIDもしくはパスワードが違います。未登録の方は新規登録をしてください。";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Login.aspx");
        }
    }
}