<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPCdata.aspx.cs" Inherits="YourNamespace.AdminPCdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin PC Data</title>
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
            justify-content: flex-end;
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
    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Home" />
    <asp:Button ID="Button6" runat="server" CssClass="btn btn-info" OnClick="Button6_Click" Text="PC情報管理" />
    <asp:Button ID="Button2" runat="server" CssClass="btn btn-info" Text="ユーザー管理" OnClick="Button2_Click" />
</div>
            <h1>PC一覧</h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" BackColor="#FFFFFF" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" DataKeyNames="Pcid" DataSourceID="SqlDataSource2" Width="93%" OnRowCommand="GridView1_RowCommand" CellSpacing="0" ForeColor="#333333" Height="238px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                <Columns>
                    <asp:BoundField DataField="Pcid" HeaderText="ID" ReadOnly="True" SortExpression="Pcid" />
                    <asp:BoundField DataField="Pcname" HeaderText="PC名" SortExpression="Pcname" />
                    <asp:BoundField DataField="Manufacturer" HeaderText="メーカー" SortExpression="Manufacturer" />
                    <asp:BoundField DataField="CPU" HeaderText="CPU" SortExpression="CPU" />
                    <asp:BoundField DataField="MemoryCapacity" HeaderText="メモリ" SortExpression="MemoryCapacity" />
                    <asp:BoundField DataField="SSD" HeaderText="SSD" SortExpression="SSD" />
                    <asp:BoundField DataField="HDD" HeaderText="HDD" SortExpression="HDD" />
                    <asp:BoundField DataField="PurchaseDate" HeaderText="購入日" SortExpression="PurchaseDate" />
                    <asp:BoundField DataField="Comment" HeaderText="コメント" SortExpression="Comment" />
                    <asp:TemplateField HeaderText="コマンド">
                        <ItemTemplate>
                            <div class="btn-group" style="display: flex;">
            <asp:Button ID="EditButton" runat="server" CssClass="btn btn-primary" CommandName="Edit" CommandArgument='<%# Container.DataItemIndex %>' Text="編集" style="width: 100%;" />
            <asp:Button ID="DetailsButton" runat="server" CssClass="btn btn-info" CommandName="Details" CommandArgument='<%# Container.DataItemIndex %>' Text="貸出情報" style="width: 100%;" />
            <asp:Button ID="DeleteButton" runat="server" CssClass="btn btn-danger" CommandName="Delete" CommandArgument='<%# Container.DataItemIndex %>' Text="削除" style="width: 100%;" />
        </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    PC ID
                </EmptyDataTemplate>
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Computers]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
