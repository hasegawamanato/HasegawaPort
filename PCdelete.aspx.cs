using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login
{
    public partial class PCdelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // URLパラメータからデータを取得して表示
                string pcid = Request.QueryString["Pcid"];
                string pcname = Request.QueryString["Pcname"];
                string manufacturer = Request.QueryString["Manufacturer"];
                string cpu = Request.QueryString["CPU"];
                string memoryCapacity = Request.QueryString["MemoryCapacity"];
                string ssd = Request.QueryString["SSD"];
                string hdd = Request.QueryString["HDD"];
                string purchaseDate = Request.QueryString["PurchaseDate"];
                string comment = Request.QueryString["Comment"];

                Label1.Text = pcid;
                Label2.Text = pcname;
                Label3.Text = manufacturer;
                Label4.Text = cpu;
                Label5.Text = memoryCapacity;
                Label6.Text = ssd;
                Label7.Text = hdd;
                Label8.Text = purchaseDate;
                Label9.Text = comment;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("AdminPCdata.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // データベースから選択されたPCデータを削除する
            string pcid = Label1.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string query = "DELETE FROM Computers WHERE Pcid = @Pcid";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Pcid", pcid);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            // 削除後はAdminPCdata.aspxに戻る
            Response.Redirect("PCsuc.aspx");
        }
    }
    
}