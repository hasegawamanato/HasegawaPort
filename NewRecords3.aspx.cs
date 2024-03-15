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
    public partial class NewRecords3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                // Session変数からUserIDを取得してtextbox1に自動入力
               TextBox1.Text = Session["UserID"].ToString();

                // Session変数からPCIDを取得してtextbox2に自動入力
                TextBox2.Text = Session["SelectedPCID"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("NewRecords.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // データをデータベースに格納する
            SaveLoanRecord();
            Server.Transfer("NewRecords4.aspx");
        }
        protected void SaveLoanRecord()
        {
            // データベース接続文字列を取得
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            DateTime loanDate;
            DateTime.TryParse(TextBox3.Text, out loanDate);

            DateTime returnDate;
            DateTime.TryParse(TextBox4.Text, out returnDate);

            // データベースに保存するための形式に変換
            string loanDateFormatted = loanDate.ToString("yyyy-MM-dd HH:mm:ss");
            string returnDateFormatted = returnDate.ToString("yyyy-MM-dd HH:mm:ss");
            // SQLコマンドを作成
            string query = "INSERT INTO LoanRecords (UserId, DeviceID, LoanDate, ReturnDate) VALUES (@UserId, @DeviceID, @LoanDate, @ReturnDate)";

            // データベース接続を作成してコマンドを実行
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // パラメータを追加
                    command.Parameters.AddWithValue("@UserId", TextBox1.Text);
                    command.Parameters.AddWithValue("@DeviceID", TextBox2.Text);
                    command.Parameters.AddWithValue("@LoanDate", TextBox3.Text);
                    command.Parameters.AddWithValue("@ReturnDate", TextBox4.Text);

                    // 接続を開く
                    connection.Open();

                    // コマンドを実行
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}