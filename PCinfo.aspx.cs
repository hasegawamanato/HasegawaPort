using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Login
{
    public partial class PCinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // ページロード時にデータを表示
                DisplayLoanRecord();
            }
        }

        protected void DisplayLoanRecord()
        {
            // クエリを変更し、LoanRecordsとComputersテーブルをJOINして関連するレコードを取得する
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string query = @"SELECT LR.RecordID, LR.UserId, LR.LoanDate, LR.ReturnDate 
                             FROM LoanRecords LR
                             INNER JOIN Computers C ON LR.DeviceID = C.Pcid
                             WHERE C.Pcid = @Pcid"; // Pcidを条件に追加

            // PCdata.aspxから渡されたPcidを取得
            string pcid = Request.QueryString["Pcid"];

            using (SqlConnection connection = new SqlConnection(strCon))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Pcid", pcid); // パラメータを追加
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        RecordIDLabel.Text = reader["RecordID"].ToString();
                        UserIDLabel.Text = reader["UserId"].ToString();
                        LoanDateLabel.Text = reader["LoanDate"].ToString();
                        ReturnDateLabel.Text = reader["ReturnDate"].ToString();
                    }

                    reader.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("AdminPCdata.aspx");
        }
    }
}
