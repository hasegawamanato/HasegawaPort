using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login
{
    public partial class NewRecords : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.Columns[1].HeaderText = "ID";
                GridView1.Columns[2].HeaderText = "PC名";
                GridView1.Columns[3].HeaderText = "メーカー";
                GridView1.Columns[4].HeaderText = "CPU";
                GridView1.Columns[5].HeaderText = "メモリ";
                GridView1.Columns[6].HeaderText = "購入日";
                GridView1.Columns[7].HeaderText = "コメント";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow selectedRow = GridView1.SelectedRow;

                // セッションにデータを保存
                Session["SelectedPCID"] = selectedRow.Cells[1].Text;
                Session["SelectedPCName"] = selectedRow.Cells[2].Text;
                Session["SelectedManufacturer"] = selectedRow.Cells[3].Text;
                Session["SelectedCPU"] = selectedRow.Cells[4].Text;
                Session["SelectedMemoryCapacity"] = selectedRow.Cells[5].Text;
                Session["SelectedSSD"] = selectedRow.Cells[6].Text;
                Session["SelectedHDD"] = selectedRow.Cells[7].Text;
                Session["SelectedPurchaseDate"] = selectedRow.Cells[8].Text;
                Session["SelectedComment"] = selectedRow.Cells[9].Text;

                // NewRecords2.aspx ページにリダイレクト
                Response.Redirect("NewRecords2.aspx");
         }           
    }
}
