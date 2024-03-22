using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login
{
    public partial class Userdelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // URL パラメータから情報を取得してラベルに表示
                string userId = Request.QueryString["UserId"];
                string name = Request.QueryString["Name"];
                string mail = Request.QueryString["Mail"];

                Label1.Text = userId;
                Label2.Text = name;
                Label3.Text = mail;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userId = Request.QueryString["UserId"];
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string query = "DELETE FROM User_Login WHERE UserId = @UserId";

            string loanQuery = "SELECT COUNT(*) FROM LoanRecords WHERE UserId = @UserId";
            int loanCount = 0;

            using (SqlConnection loanConnection = new SqlConnection(connectionString))
            {
                using (SqlCommand loanCommand = new SqlCommand(loanQuery, loanConnection))
                {
                    loanCommand.Parameters.AddWithValue("@UserId", userId);
                    loanConnection.Open();
                    loanCount = (int)loanCommand.ExecuteScalar();
                }
            }
            if (loanCount > 0)
            {
                Label4.Text = "このユーザにはレンタル情報が存在するため、情報を削除することができません。";
                Button1.Visible = false;
                Button2.Visible = true;
                return;
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@UserId", userId);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            // ページを遷移
            Response.Redirect("Usersuc.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("AdminUser.aspx");
        }
    }
}
