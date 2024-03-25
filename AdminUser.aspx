<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUser.aspx.cs" Inherits="Login.AdminUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin User</title>
    <style type="text/css">
        body {
            background-color: #f5f5f5;
            color: #333333;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            color: #333333;
            font-size: 24px;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            border: 1px solid #dddddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #333333;
            color: #ffffff;
        }

        .header-buttons {
            display: flex;
            justify-content: flex-start;
            margin-bottom: 20px;
        }

        .header-buttons button {
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-size: 14px;
            text-transform: uppercase;
            transition: background-color 0.3s ease;
            margin-left: 10px;
        }

        .header-buttons button:first-child {
            margin-left: 0;
        }

        .grid-command-buttons button {
            padding: 5px 10px;
            border: none;
            cursor: pointer;
            font-size: 12px;
            text-transform: uppercase;
            transition: background-color 0.3s ease;
            margin: 2px;
            width: 70px;
        }

        .btn-primary {
            background-color: #007bff;
            color: #ffffff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .btn-info {
            background-color: #17a2b8;
            color: #ffffff;
        }

        .btn-info:hover {
            background-color: #117a8b;
        }

        .btn-danger {
            background-color: #dc3545;
            color: #ffffff;
        }

        .btn-danger:hover {
            background-color: #bd2130;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="header-buttons" style="justify-content: flex-start;">
                <asp:Button ID="Button6" runat="server" CssClass="btn btn-info" OnClick="Button6_Click" Text="PC情報管理" />
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-info" Text="ユーザー管理" OnClick="Button2_Click" />
                <asp:Button ID="Button5" runat="server" CssClass="btn btn-danger" OnClick="Button5_Click1" Text="ログアウト" />
            </div>
            <h1>ユーザー一覧</h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" CellSpacing="2" CssClass="auto-style1" Width="100%" OnRowCommand="GridView1_RowCommand" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="UserId" HeaderText="ID" ReadOnly="True" SortExpression="UserId" />
                    <asp:BoundField DataField="name" HeaderText="名前" SortExpression="name" />
                    <asp:BoundField DataField="mail" HeaderText="メールアドレス" SortExpression="mail" />
                    <asp:TemplateField HeaderText="コマンド" ItemStyle-Width="150px">
                        <ItemTemplate>
                            <div class="grid-command-buttons" style="display: flex;">
                                <asp:Button ID="EditButton" runat="server" CssClass="btn btn-primary" CommandName="Edit" CommandArgument='<%# Container.DataItemIndex %>' Text="変更" />
                                <asp:Button ID="DetailsButton" runat="server" CssClass="btn btn-info" CommandName="Details" CommandArgument='<%# Container.DataItemIndex %>' Text="詳細" />
                                <asp:Button ID="DeleteButton" runat="server" CssClass="btn btn-danger" CommandName="Delete" CommandArgument='<%# Container.DataItemIndex %>' Text="削除" />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="#FFFFFF" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT [UserId], [name], [mail] FROM [User_Login]"
                DeleteCommand="DELETE FROM [User_Login] WHERE [UserId] = @UserId">
                <DeleteParameters>
                    <asp:Parameter Name="UserId" Type="Int32"/>
                </DeleteParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="戻る" CssClass="auto-style6" Height="35px" Width="71px" style="color: #FFFFFF; background-color: #000000" />
        </div>
    </form>
</body>
</html>
