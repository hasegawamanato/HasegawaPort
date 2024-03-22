<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRecords.aspx.cs" Inherits="Login.NewRecords" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>PC一覧画面</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        h1 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }
        .message {
            color: #FF3300;
            margin-bottom: 10px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            padding: 10px;
            border: 1px solid #999;
        }
        th {
            background-color: #333;
            color: #fff;
            text-align: left;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .back-button {
            background-color: #ccc;
            color: #000;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 20px;
            cursor: pointer;
        }
        .back-button:hover {
            background-color: #999;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>PC一覧画面</h1>
            <p>レンタルしたいPCを選択してください。</p>
            <asp:Label ID="Label1" runat="server" CssClass="message" Visible="False"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Pcid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Computers]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="戻る" CssClass="back-button" />
        </div>
    </form>
</body>
</html>
