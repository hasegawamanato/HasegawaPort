<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserInfoChange.aspx.cs" Inherits="Login.UserInfoChange" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 135px;
        }
        .auto-style3 {
            width: 135px;
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
        }
        .auto-style5 {
            color: #FFFFFF;
        }
        .auto-style6 {
            color: #FFFFFF;
            background-color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>登録情報変更画面</h1>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ユーザー情報を変更しない" BackColor="Black" BorderStyle="None" CssClass="auto-style5" />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">ユーザーID</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="background-color: #00FFFF">パスワード</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">メールアドレス</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">名前</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <br />
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="変更" CssClass="auto-style6" Height="30px" Width="59px" />
        </div>
    </form>
</body>
</html>
