using System;
using System.Web.UI.WebControls;

namespace Login
{
    public partial class NewRecords2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                Label1.Text = "ID: " + Session["SelectedPCID"];
                Label2.Text = "PC名: " + Session["SelectedPCName"];
                Label3.Text = "メーカー: " + Session["SelectedManufacturer"];
                Label4.Text = "CPU: " + Session["SelectedCPU"];
                Label5.Text = "メモリ: " + Session["SelectedMemoryCapacity"];
                Label6.Text = "SSD: " + Session["SelectedSSD"];
                Label7.Text = "HDD: " + Session["SelectedHDD"];
                Label8.Text = "購入日: " + Session["SelectedPurchaseDate"];
                Label9.Text = "コメント: " + Session["SelectedComment"];
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("NewRecords.aspx");
        }
    }
}
