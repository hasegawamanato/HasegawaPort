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
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    // セッションからユーザー名を取得
                    string username = Session["Username"].ToString();

                    // データベースからユーザー名に対応する名前を取得
                    string name = GetUserNameFromDatabase(username);

                    // 名前をLabel1に表示する
                    Label1.Text = "ようこそ " + name + " さん";
                }
                else
                {
                    // セッションにユーザー名が保存されていない場合は、ログインページにリダイレクトするなどの処理を行う
                    Response.Redirect("Login.aspx");
                }
            }
        }

        private string GetUserNameFromDatabase(string username)
        {
            string name = "";
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(strCon))
            {
                con.Open();
                string selectCommand = "SELECT name FROM User_Login WHERE UserId=@UserId";
                using (SqlCommand cmd = new SqlCommand(selectCommand, con))
                {
                    cmd.Parameters.AddWithValue("@UserId", username);
                    name = (string)cmd.ExecuteScalar();
                }
            }

            return name;
        }

    }
}