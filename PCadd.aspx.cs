using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Login
{
    public partial class PCadd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pcid = TextBox10.Text;
            string pcname = TextBox2.Text;
            string manufacturer = TextBox3.Text;
            string cpu = TextBox4.Text;
            string memoryCapacity = TextBox5.Text;
            string ssd = TextBox6.Text;
            string hdd = TextBox7.Text;
            string purchaseDate = TextBox8.Text;
            string comment = TextBox9.Text;

            // データベースへの接続文字列
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            if (IsPCIDExists(connectionString, pcid))
            {
                // PCIDが既に存在する場合はエラーメッセージを表示して処理を終了
                Label1.Text = "このPCIDは既に登録済です。別のPCIDを入力してください。";
                return;
            }

            // SQLコマンドの作成
            string query = "INSERT INTO Computers (Pcid, Pcname, Manufacturer, CPU, MemoryCapacity, SSD, HDD, PurchaseDate, Comment) " +
                           "VALUES (@Pcid, @Pcname, @Manufacturer, @CPU, @MemoryCapacity, @SSD, @HDD, @PurchaseDate, @Comment)";

            // SQLコネクションとコマンドの作成
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // パラメータの追加
                    command.Parameters.AddWithValue("@Pcid", pcid);
                    command.Parameters.AddWithValue("@Pcname", pcname);
                    command.Parameters.AddWithValue("@Manufacturer", manufacturer);
                    command.Parameters.AddWithValue("@CPU", cpu);
                    command.Parameters.AddWithValue("@MemoryCapacity", memoryCapacity);
                    command.Parameters.AddWithValue("@SSD", ssd);
                    command.Parameters.AddWithValue("@HDD", hdd);
                    command.Parameters.AddWithValue("@PurchaseDate", purchaseDate);
                    command.Parameters.AddWithValue("@Comment", comment);

                    // データベースへの接続とコマンドの実行
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            // データの追加が完了したら、任意のページにリダイレクトする
            Response.Redirect("Success.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("AdminPC.aspx");
        }
        private bool IsPCIDExists(string connectionString, string pcid)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM Computers WHERE Pcid = @Pcid";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Pcid", pcid);
                    connection.Open();
                    int count = (int)command.ExecuteScalar();
                    return count > 0;
                }
            }
        }
    }
}