using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Runtime.Remoting.Channels;

namespace Login
{
    public partial class PCreturn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null && Session["DeviceID"] != null)
                {
                    string username = Session["Username"].ToString();
                    string deviceId = Session["DeviceID"].ToString(); // DeviceIDを文字列として取得

                    DisplayComputerInfo(username, deviceId);
                }
                else
                {
                    // ユーザー名やデバイスIDがない場合の処理を追加する必要があります
                }
            }
        }

        private void DisplayComputerInfo(string username, string deviceId)
        {
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;


            using (SqlConnection con = new SqlConnection(strCon))
            {
                con.Open();
                string selectCommand = @"SELECT C.Pcid, C.Pcname, C.Manufacturer, C.CPU, C.MemoryCapacity, C.SSD, C.HDD, C.PurchaseDate, C.Comment 
                                         FROM Computers C
                                         INNER JOIN LoanRecords L ON C.Pcid = L.DeviceID
                                         WHERE L.UserId = @UserID AND C.Pcid = @DeviceID";
                using (SqlCommand cmd = new SqlCommand(selectCommand, con))
                {
                    cmd.Parameters.AddWithValue("@UserID", username);
                    cmd.Parameters.AddWithValue("@DeviceID", deviceId);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            if (reader.Read())
                            {
                                Label1.Text = reader["Pcid"].ToString();
                                Label2.Text = reader["Pcname"].ToString();
                                Label3.Text = reader["Manufacturer"].ToString();
                                Label4.Text = reader["CPU"].ToString();
                                Label5.Text = reader["MemoryCapacity"].ToString();
                                Label6.Text = reader["SSD"].ToString();
                                Label7.Text = reader["HDD"].ToString();
                                Label8.Text = reader["PurchaseDate"].ToString();
                                Label9.Text = reader["Comment"].ToString();
                            }
                        }
                        else
                        {
                            // 該当するレコードが見つからない場合の処理
                            // 例: Labelにメッセージを表示するなど
                            Label1.Text = "該当するデータが見つかりません。";
                        }
                    }
                }
            }
        }
        private void DeleteLoanRecord(string username, string deviceId)
        {
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(strCon))
            {
                con.Open();
                string deleteCommand = "DELETE FROM LoanRecords WHERE UserId = @UserId AND DeviceID = @DeviceID";
                using (SqlCommand cmd = new SqlCommand(deleteCommand, con))
                {
                    cmd.Parameters.AddWithValue("@UserId", username);
                    cmd.Parameters.AddWithValue("@DeviceID", deviceId);
                    int rowsAffected = cmd.ExecuteNonQuery();

                   
                }
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
           
            Server.Transfer("UserLoanRecords.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null && Session["DeviceID"] != null)
            {
                string username = Session["Username"].ToString();
                string deviceId = Session["DeviceID"].ToString();

                DeleteLoanRecord(username, deviceId);
            }
            Server.Transfer("PCreturn2.aspx");    
        }
        
    }
}
