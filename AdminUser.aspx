<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUser.aspx.cs" Inherits="Login.AdminUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 55px;
        }
        .auto-style2 {
            color: #FF3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        ユーザー一覧<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="574px" OnRowCommand="GridView1_RowCommand" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="UserId" HeaderText="ID" ReadOnly="True" SortExpression="UserId" />
                <asp:BoundField DataField="name" HeaderText="名前" SortExpression="name" />
                <asp:BoundField DataField="mail" HeaderText="メールアドレス" SortExpression="mail" />
                 <asp:TemplateField HeaderText="コマンド">
    <ItemTemplate>
        <div class="btn-group">
            
            <asp:Button ID="EditButton" runat="server" CssClass="btn btn-primary" CommandName="Edit" CommandArgument='<%# Container.DataItemIndex %>' Text="変更" />
            <asp:Button ID="DetailsButton" runat="server" CssClass="btn btn-info" CommandName="Details" CommandArgument='<%# Container.DataItemIndex %>' Text="貸出情報" />
            <asp:Button ID="DeleteButton" runat="server" CssClass="btn btn-danger" CommandName="Delete" CommandArgument='<%# Container.DataItemIndex %>' Text="削除" />
        </div>
    </ItemTemplate>
</asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="Black" HorizontalAlign="Left" BackColor="#CCCCCC" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [UserId], [name], [mail] FROM [User_Login]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style2"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="戻る" />
    </form>
</body>
</html>
