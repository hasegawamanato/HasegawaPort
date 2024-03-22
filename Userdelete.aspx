<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Userdelete.aspx.cs" Inherits="Login.Userdelete" %>

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
            width: 130px;
        }
        .auto-style3 {
            width: 130px;
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
        }
        .auto-style5 {
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style6 {
            color: #FF3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>このユーザを削除しますか？</h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">ユーザID</td>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="background-color: #00FFFF">名前</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">メールアドレス</td>
                    <td>
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="削除" CssClass="auto-style5" Height="31px" Width="62px" />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" CssClass="auto-style6"></asp:Label>
            <br />
            <asp:Button ID="Button2" runat="server" CssClass="auto-style5" Height="30px" OnClick="Button2_Click" Text="戻る" Visible="False" Width="62px" />
        </div>
    </form>
</body>
</html>
