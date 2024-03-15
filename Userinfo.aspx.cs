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
    public partial class Userinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Label1.Text = Session["NAME"].ToString();
                // ページロード時にデータを表示
                DisplayLoanRecord();
            }
        }
        protected void DisplayLoanRecord()
        {
            // クエリを変更し、LoanRecordsとComputersテーブルをJOINして関連するレコードを取得する
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string query = @"SELECT LR.RecordID, LR.UserId, LR.DeviceID, LR.LoanDate, LR.ReturnDate 
                     FROM LoanRecords LR
                     WHERE LR.UserId = @UserId"; // Pcidを条件に追加

            // PCdata.aspxから渡されたPcidを取得
            string userid = Request.QueryString["UserId"];

            using (SqlConnection connection = new SqlConnection(strCon))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@UserId", userid); // パラメータを追加
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        Label2.Text = reader["RecordID"].ToString();
                        Label3.Text = reader["UserId"].ToString();
                        Label4.Text = reader["DeviceID"].ToString(); // デバイスIDを表示
                        Label5.Text = reader["LoanDate"].ToString();
                        Label6.Text = reader["ReturnDate"].ToString();
                    }
                    else
                    {
                        // 該当するレコードが見つからない場合の処理を追加することが適切です
                        // 例えば、Labelにメッセージを表示するなど
                    }

                    reader.Close();
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("AdminUser.aspx");
        }
    }
}