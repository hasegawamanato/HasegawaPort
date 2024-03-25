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
    public partial class AdminUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Details" || e.CommandName == "Edit" || e.CommandName == "Delete")
            {
                int index = Convert.ToInt32(e.CommandArgument); // クリックされた行のインデックスを取得
                GridViewRow row = GridView1.Rows[index];

                // 選択された行の内容を取得
                string userId = row.Cells[0].Text;
                string name = row.Cells[1].Text;
                string mail = row.Cells[2].Text;

                // 選択されたコマンドに応じて遷移先を決定し、適切なページにリダイレクトする
                switch (e.CommandName)
                {
                    case "Details":
                        Session["NAME"] = name;
                        Response.Redirect("Userinfo.aspx?UserId=" + userId + "&Name=" + name + "&Mail=" + mail);
                        break;
                    case "Edit":
                        Response.Redirect("Useredit.aspx?UserId=" + userId + "&Name=" + name + "&Mail=" + mail);
                        break;
                    case "Delete":
                       
                            // 貸出情報がない場合は削除画面に遷移
                            Response.Redirect("Userdelete.aspx?UserId=" + userId + "&Name=" + name + "&Mail=" + mail);
                        break;
                    default:
                        break;
                }
            }
        }
        // LoanRecords テーブルにユーザに関連するレコードが存在するかを確認するメソッド
        
 

        protected void Button5_Click1(object sender, EventArgs e)
        {
            Server.Transfer("Login3.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Server.Transfer("AdminHome.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Server.Transfer("AdminPC.aspx");
        }

        
        protected void Button7_Click(object sender, EventArgs e)
        {
            Server.Transfer("AdminHome.aspx");
        }
    }
}