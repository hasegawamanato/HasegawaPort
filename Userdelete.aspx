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
            width: 117px;
        }
        .auto-style3 {
            width: 117px;
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            このユーザを削除しますか？<br />
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="background-color: #00FF00">ユーザID</td>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="background-color: #00FF00">名前</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #00FF00">メールアドレス</td>
                    <td>
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="削除" />
        </div>
    </form>
</body>
</html>
