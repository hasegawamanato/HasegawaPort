<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login3.aspx.cs" Inherits="Login.Login3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 41%;
        }
        .auto-style2 {
            width: 107px;
        }
        .auto-style3 {
            color: #FF3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ログイン画面</h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align: right">ID：</td>
                    <td>
                        <asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">パスワード：</td>
                    <td>
                        <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Label ID="ErrorMessageLabel" runat="server" CssClass="auto-style3"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="新規登録" />
&nbsp;<asp:Button ID="LoginButton" runat="server" OnClick="LoginButton_Click1" Text="ログイン" />
        </div>
    </form>
</body>
</html>
