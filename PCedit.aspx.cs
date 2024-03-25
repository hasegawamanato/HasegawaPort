using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YourNamespace
{
    public partial class PCedit : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // AdminPCdata.aspx.csからデータを受け取る
                string pcid = Request.QueryString["Pcid"];
                string pcname = Request.QueryString["Pcname"];
                string manufacturer = Request.QueryString["Manufacturer"];
                string cpu = Request.QueryString["CPU"];
                string memoryCapacity = Request.QueryString["MemoryCapacity"];
                string ssd = Request.QueryString["SSD"];
                string hdd = Request.QueryString["HDD"];
                string purchaseDate = Request.QueryString["PurchaseDate"];
                string comment = Request.QueryString["Comment"];

                // 受け取ったデータを各TextBoxに表示する
                Label1.Text = pcid;
                TextBox2.Text = pcname;
                TextBox3.Text = manufacturer;
                TextBox4.Text = cpu;
                TextBox5.Text = memoryCapacity;
                TextBox6.Text = ssd;
                TextBox7.Text = hdd;
                TextBox8.Text = purchaseDate;
                TextBox9.Text = comment;
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            // セッションをクリアする
            Session.Clear();
            // AdminPCdata.aspxに遷移する
            Response.Redirect("AdminPCdata.aspx");
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            string pcid = Label1.Text;
            string pcname = TextBox2.Text;
            string manufacturer = TextBox3.Text;
            string cpu = TextBox4.Text;
            string memoryCapacity = TextBox5.Text;
            string ssd = TextBox6.Text;
            string hdd = TextBox7.Text;
            string purchaseDate = TextBox8.Text; // 日付の形式に変換が必要かもしれません
            string comment = TextBox9.Text;

            // データベースに接続してデータを格納する
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string query = "UPDATE Computers SET Pcname = @Pcname, Manufacturer = @Manufacturer, CPU = @CPU, MemoryCapacity = @MemoryCapacity, SSD = @SSD, HDD = @HDD, PurchaseDate = @PurchaseDate, Comment = @Comment WHERE Pcid = @Pcid";

            using (SqlConnection connection = new SqlConnection(strCon))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // パラメータを設定
                    command.Parameters.AddWithValue("@Pcid", pcid);
                    command.Parameters.AddWithValue("@Pcname", pcname);
                    command.Parameters.AddWithValue("@Manufacturer", manufacturer);
                    command.Parameters.AddWithValue("@CPU", cpu);
                    command.Parameters.AddWithValue("@MemoryCapacity", memoryCapacity);
                    command.Parameters.AddWithValue("@SSD", ssd);
                    command.Parameters.AddWithValue("@HDD", hdd);
                    command.Parameters.AddWithValue("@PurchaseDate", purchaseDate);
                    command.Parameters.AddWithValue("@Comment", comment);

                    // データベースに接続してコマンドを実行
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    connection.Close();
                }
            }
            Server.Transfer("PCsuc.aspx");
        }
    }
}
