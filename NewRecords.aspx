<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRecords.aspx.cs" Inherits="Login.NewRecords" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>PC一覧画面</h1>
            レンタルしたいPCを選択ください。<br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Pcid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Pcid" HeaderText="ID" ReadOnly="True" SortExpression="Pcid" />
                    <asp:BoundField DataField="Pcname" HeaderText="PC名" SortExpression="Pcname" />
                    <asp:BoundField DataField="Manufacturer" HeaderText="メーカー" SortExpression="Manufacturer" />
                    <asp:BoundField DataField="CPU" HeaderText="CPU" SortExpression="CPU" />
                    <asp:BoundField DataField="MemoryCapacity" HeaderText="メモリ" SortExpression="MemoryCapacity" />
                    <asp:BoundField DataField="SSD" HeaderText="SSD" SortExpression="SSD" />
                    <asp:BoundField DataField="HDD" HeaderText="HDD" SortExpression="HDD" />
                    <asp:BoundField DataField="PurchaseDate" HeaderText="購入日" SortExpression="PurchaseDate" />
                    <asp:BoundField DataField="Comment" HeaderText="コメント" SortExpression="Comment" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Computers]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
