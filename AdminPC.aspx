<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPC.aspx.cs" Inherits="Login.AdminPC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PC情報管理画面</title>
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" BorderStyle="None" OnClick="Button1_Click" Text="ホーム" CssClass="btn btn-primary" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button2" runat="server" BorderStyle="None" Text="ユーザー管理" OnClick="Button2_Click" CssClass="btn btn-info"/>
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="Button5" runat="server" BorderStyle="None" CssClass="btn btn-danger" OnClick="Button5_Click1" Text="ログアウト" />
                    </td>
                </tr>
            </table>
            <br />
             <h1>PC情報管理画面</h1>
            <p>ようこそ、PC管理システムのPC情報管理画面へ！</p>
            <p>以下ボタンより各種作業を行ってください。</p>
           
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="新規PC登録" CssClass="btn btn-info" />
            &nbsp;<asp:Button ID="Button4" runat="server" Text="登録PC一覧" OnClick="Button4_Click" CssClass="btn btn-info" style="color: #FFFFFF; background-color: #00CC66" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
