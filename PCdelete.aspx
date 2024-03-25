<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PCdelete.aspx.cs" Inherits="Login.PCdelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
            background-color: #FFFFFF;
            color: #000000;
            font-family: Arial, sans-serif;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }
        h1 {
            color: #000000;
            font-size: 24px;
        }
        .message {
            font-size: 18px;
            color: #FF3300;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            border: 1px solid #000000;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #00FFFF;
        }
        .cancel-button, .delete-button, .back-button {
            background-color: #000000;
            color: #FFFFFF;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-bottom: 10px;
            cursor: pointer;
        }
        .cancel-button:hover, .delete-button:hover, .back-button:hover {
            background-color: #666666;
        }
        .auto-style1 {
            width: 156px;
            background-color: #66FFFF;
        }
        .auto-style2 {
            width: 1178px;
        }
        .auto-style3 {
            width: 66%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>PC削除画面</h1>
            <p class="message">このPCを削除しますか？</p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="キャンセル" CssClass="cancel-button" />
            <br />
            <table class="auto-style3">
                <tr>
                    <th class="auto-style1">PCID</th>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">PC名</th>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">メーカー</th>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">CPU</th>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">メモリ</th>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">SSD</th>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">HDD</th>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">購入日</th>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">コメント</th>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="削除" CssClass="delete-button" />
            <br />
            <asp:Label ID="Label10" runat="server" CssClass="message"></asp:Label>
            <br />
            <asp:Button ID="Button3" runat="server" CssClass="back-button" OnClick="Button3_Click" Text="戻る" Visible="False" />
        </div>
    </form>
</body>
</html>
