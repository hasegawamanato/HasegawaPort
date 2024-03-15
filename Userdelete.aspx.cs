using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
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

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM User_Login WHERE UserId = @UserId";
                try
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@UserId", userId);

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                } catch(Exception ex)
                {
                    
                } 
                
                    
                
                

                
            }

            // ページを遷移
            Response.Redirect("Usersuc.aspx");
        }
    }
}
