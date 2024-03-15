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
                
                Label1.Text = Session["SelectedPCID"].ToString();
                Label2.Text = Session["SelectedPCName"].ToString();
                Label3.Text = Session["SelectedManufacturer"].ToString();
                Label4.Text = Session["SelectedCPU"].ToString();
                Label5.Text = Session["SelectedMemoryCapacity"].ToString();
                Label6.Text = Session["SelectedSSD"].ToString();
                Label7.Text = Session["SelectedHDD"].ToString() ;
                Label8.Text = Session["SelectedPurchaseDate"].ToString();
                Label9.Text = Session["SelectedComment"].ToString() ;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("NewRecords.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("NewRecords3.aspx");
        }
    }
}
