using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace YourNamespace
{
    public partial class AdminPCdata : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.Columns[0].HeaderText = "ID";
                GridView1.Columns[1].HeaderText = "PC名";
                GridView1.Columns[2].HeaderText = "メーカー";
                GridView1.Columns[3].HeaderText = "CPU";
                GridView1.Columns[4].HeaderText = "メモリ";
                GridView1.Columns[7].HeaderText = "購入日";
                GridView1.Columns[8].HeaderText = "コメント";
            }
        }


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            // 編集モードにする
            GridView1.EditIndex = e.NewEditIndex;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // 削除処理を実行
            int pcid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["Pcid"]);
            // 削除処理を実行するSQLクエリを記述する
            
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            // 更新処理を実行
            int pcid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["Pcid"]);
            // 更新処理を実行するSQLクエリを記述する
            GridView1.EditIndex = -1;
            
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            // 編集モードをキャンセル
            GridView1.EditIndex = -1;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("AdminHome.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("AdminUser.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Server.Transfer("AdminPC.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Details" || e.CommandName == "Edit" || e.CommandName == "Delete")
            {
                int index = Convert.ToInt32(e.CommandArgument); // クリックされた行のインデックスを取得
                GridViewRow row = GridView1.Rows[index];

                // 選択された行の内容を取得
                string pcid = row.Cells[0].Text;
                string pcname = row.Cells[1].Text;
                string manufacturer = row.Cells[2].Text;
                string cpu = row.Cells[3].Text;
                string memoryCapacity = row.Cells[4].Text;
                string ssd = row.Cells[5].Text;
                string hdd = row.Cells[6].Text;
                string purchaseDate = row.Cells[7].Text;
                string comment = row.Cells[8].Text;

                // 選択されたコマンドに応じて遷移先を決定し、適切なページにリダイレクトする
                switch (e.CommandName)
                {
                    case "Details":
                        Response.Redirect("PCinfo.aspx?Pcid=" + pcid + "&Pcname=" + pcname + "&Manufacturer=" + manufacturer + "&CPU=" + cpu + "&MemoryCapacity=" + memoryCapacity + "&SSD=" + ssd + "&HDD=" + hdd + "&PurchaseDate=" + purchaseDate + "&Comment=" + comment);
                        break;
                    case "Edit":
                        Response.Redirect("PCedit.aspx?Pcid=" + pcid + "&Pcname=" + pcname + "&Manufacturer=" + manufacturer + "&CPU=" + cpu + "&MemoryCapacity=" + memoryCapacity + "&SSD=" + ssd + "&HDD=" + hdd + "&PurchaseDate=" + purchaseDate + "&Comment=" + comment);
                        break;
                    case "Delete":
                        Response.Redirect("PCdelete.aspx?Pcid=" + pcid + "&Pcname=" + pcname + "&Manufacturer=" + manufacturer + "&CPU=" + cpu + "&MemoryCapacity=" + memoryCapacity + "&SSD=" + ssd + "&HDD=" + hdd + "&PurchaseDate=" + purchaseDate + "&Comment=" + comment);
                        break;
                    default:
                        break;
                }
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Server.Transfer("AdminPC.aspx");
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}
