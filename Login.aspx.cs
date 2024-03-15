
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        private void SelectData()
        {
            string userId = (string)Session["EditUserId"];
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(strCon);
            con.Open();

            try
            {
                string selectCommand = "SELECT UserId,Password,mail,name FROM User_Login WHERE UserId='{0}'";
                selectCommand = string.Format(selectCommand, userId);

                SqlDataAdapter da = new SqlDataAdapter(selectCommand, con);
                DataSet ds = new DataSet();
                da.Fill(ds);

                TextBox1.Text = (string)ds.Tables[0].Rows[0]["UserId"];
                TextBox3.Text = (string)ds.Tables[0].Rows[0]["Password"];
                TextBox5.Text = (string)ds.Tables[0].Rows[0]["mail"];
                TextBox6.Text = (string)ds.Tables[0].Rows[0]["name"];

                TextBox1.ReadOnly = true;
            }
            finally
            {
                con.Close();
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strCon))
            {
                con.Open();
                try
                {
                    // 重複チェック
                    string selectCommand = "SELECT COUNT(*) FROM User_Login WHERE UserId = @UserId";
                    using (SqlCommand checkCmd = new SqlCommand(selectCommand, con))
                    {
                        checkCmd.Parameters.AddWithValue("@UserId", TextBox1.Text);
                        int count = (int)checkCmd.ExecuteScalar();
                        if (count > 0)
                        {
                            // 重複が見つかった場合、エラーメッセージを表示して処理を終了
                            Label1.Text="このユーザーIDは既に登録されています。別のユーザーIDを選択してください。";
                            return;
                        }
                    }

                    // 重複がない場合は挿入処理を実行
                    string insertCommand = "INSERT INTO User_Login(UserId, Password, mail, name) VALUES(@UserId, @Password, @Mail, @Name)";
                    using (SqlCommand cmd = new SqlCommand(insertCommand, con))
                    {
                        cmd.Parameters.AddWithValue("@UserId", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@Password", TextBox3.Text);
                        cmd.Parameters.AddWithValue("@Mail", TextBox5.Text);
                        cmd.Parameters.AddWithValue("@Name", TextBox6.Text);

                        cmd.ExecuteNonQuery();
                    }
                }
                finally
                {
                    con.Close();
                }
            }

            Server.Transfer("Login2.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("Login3.aspx");
        }
    }
}
