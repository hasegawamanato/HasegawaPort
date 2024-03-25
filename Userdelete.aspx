<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Userdelete.aspx.cs" Inherits="Login.Userdelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #00FFFF;
            color: #fff;
        }

        .button {
            background-color: #000;
            color: #fff;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 3px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #333;
        }

        .error-message {
            color: #FF3300;
        }
        .auto-style1 {
            width: 198px;
            color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>このユーザを削除しますか？</h1>
            <table>
                <tr>
                    <th class="auto-style1">ユーザID</th>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">名前</th>
                    <td>
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">メールアドレス</th>
                    <td>
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="削除" CssClass="button" Height="48px" Width="100px" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="戻る" CssClass="button" Height="48px" Width="100px" />
            <div class="error-message">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </div>
            <asp:Button ID="Button2" runat="server" CssClass="button" Height="42px" OnClick="Button2_Click" Text="戻る" Visible="False" Width="100px" />
        </div>
    </form>
</body>
</html>
