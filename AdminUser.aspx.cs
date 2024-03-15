using System;
using System.Collections.Generic;
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
                        try
                        {
                            Response.Redirect("Userdelete.aspx?UserId=" + userId + "&Name=" + name + "&Mail=" + mail);
                        }
                        catch
                        {
                            Label1.Text = name+"さんにはまだ貸出情報があります。";
                        }
                        break;
                    default:
                        break;
                }
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Server.Transfer("AdminHome.aspx");
        }
    }
}