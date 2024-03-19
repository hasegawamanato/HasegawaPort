<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Useredit.aspx.cs" Inherits="Login.Useredit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 61%;
        }
        .auto-style2 {
            width: 143px;
        }
        .auto-style3 {
            color: #FFFFFF;
            background-color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ユーザ情報変更</h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">ユーザID</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">名前</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">メールアドレス</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="変更" CssClass="auto-style3" Width="65px"/>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="戻る" CssClass="auto-style3" Width="65px" />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
