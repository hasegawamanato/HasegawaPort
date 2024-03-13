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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Pcid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Pcid" HeaderText="Pcid" ReadOnly="True" SortExpression="Pcid" />
                    <asp:BoundField DataField="Pcname" HeaderText="Pcname" SortExpression="Pcname" />
                    <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" SortExpression="Manufacturer" />
                    <asp:BoundField DataField="CPU" HeaderText="CPU" SortExpression="CPU" />
                    <asp:BoundField DataField="MemoryCapacity" HeaderText="MemoryCapacity" SortExpression="MemoryCapacity" />
                    <asp:BoundField DataField="SSD" HeaderText="SSD" SortExpression="SSD" />
                    <asp:BoundField DataField="HDD" HeaderText="HDD" SortExpression="HDD" />
                    <asp:BoundField DataField="PurchaseDate" HeaderText="PurchaseDate" SortExpression="PurchaseDate" />
                    <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Computers]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
