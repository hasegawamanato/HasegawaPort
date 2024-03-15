<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Login.AdminHome" %>

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
            width: 918px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>管理者画面</h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" BorderStyle="None" OnClick="Button1_Click" Text="貸出情報" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button2" runat="server" BorderStyle="None" Text="ユーザー管理" OnClick="Button2_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="ログアウト" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
