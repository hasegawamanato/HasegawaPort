<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPC.aspx.cs" Inherits="Login.AdminPC" %>

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
            width: 60px;
        }
        .auto-style3 {
            width: 125px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><strong>
                        <asp:Button ID="Button1" runat="server" BorderStyle="None" OnClick="Button1_Click" Text="Home" Width="101px" />
                        </strong></td>
                    <td class="auto-style3">
                        <asp:Button ID="Button2" runat="server" BorderStyle="None" Text="ユーザー管理" />
                    </td>
                    <td>
                        <asp:Button ID="Button5" runat="server" BorderStyle="None" Text="ログアウト" />
                    </td>
                </tr>
            </table>
            <br />
            <h1>PC情報管理画面</h1>
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="新規PC登録" />
            <asp:Button ID="Button4" runat="server" Text="登録PC一覧" OnClick="Button4_Click" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
