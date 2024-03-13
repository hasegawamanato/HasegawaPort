using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            // データベースからLoanRecordsテーブルのレコードを取得して表示
            string connectionString = "your_connection_string_here";
            string query = "SELECT RecordID, UserId, LoanDate, ReturnDate FROM LoanRecords WHERE RecordID";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    //command.Parameters.AddWithValue("@RecordID", Request.QueryString["RecordID"]);

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
    }
}