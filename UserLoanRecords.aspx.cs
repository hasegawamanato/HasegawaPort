using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Login
{
    public partial class UserLoanRecords : System.Web.UI.Page
    {
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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    string username = Session["Username"].ToString();

                    // データベースからユーザー名に対応する名前を取得
                    string name = GetUserNameFromDatabase(username);

                    // 名前をLabel1に表示する
                    Label5.Text = name;
                    DisplayUserLoanRecords(username);
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        private void DisplayUserLoanRecords(string username)
        {
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(strCon))
            {
                con.Open();
                string selectCommand = "SELECT RecordID, UserID, LoanDate, ReturnDate FROM LoanRecords WHERE UserId=@UserId";
                using (SqlCommand cmd = new SqlCommand(selectCommand, con))
                {
                    cmd.Parameters.AddWithValue("@UserId", username);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            // 貸出情報を取得してラベルに表示
                            if (reader.Read())
                            {
                                Label1.Text = reader["RecordID"].ToString();
                                Label2.Text = reader["UserID"].ToString();
                                Label3.Text = reader["LoanDate"].ToString();
                                Label4.Text = reader["ReturnDate"].ToString();
                            }
                        }
                        else
                        {
                            // 貸出情報が見つからない場合の処理
                            // メッセージを表示し、ボタンを表示する
                            Label6.Text = "貸出情報が存在しません。貸出をご希望の方は下記ボタンよりお手続きください。";
                            Button1.Visible = true;
                        }
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("NewRecords.aspx");
        }
    }
}

