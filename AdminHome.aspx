<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Login.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
        .auto-style1 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="header-buttons">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="PC管理" />
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-info" Text="ユーザー管理" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" CssClass="btn btn-danger" OnClick="Button3_Click" Text="ログアウト" />
            </div>
            <h1>管理者用ページ</h1>
            <p class="auto-style1"><strong>ようこそ、管理者さん！こちらはPC管理システムの管理者用ページです。</strong></p>
            <p>以下はシステムの管理機能です。上部タブより各種作業に進めます。</p>
            <ul>
                <li>ユーザーの管理</li>
                <li>PCの設定設定変更、追加、削除、貸出管理</li>
            </ul>
            <p>どうぞご活用ください。</p>
        </div>
    </form>
</body>
</html>
