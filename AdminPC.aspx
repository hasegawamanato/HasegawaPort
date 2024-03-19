<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPC.aspx.cs" Inherits="Login.AdminPC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            height: 50px;
            background-color: #000000;
        }
        .auto-style2 {
            width: 60px;
            height: 48px;
        }
        .auto-style6 {
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style3 {
            width: 918px;
            height: 48px;
        }
        .auto-style7 {
            height: 48px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" BorderStyle="None" OnClick="Button1_Click" Text="ホーム" CssClass="auto-style6" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button2" runat="server" BorderStyle="None" Text="ユーザー管理" OnClick="Button2_Click" CssClass="auto-style6" style="height: 17px" />
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="Button5" runat="server" BorderStyle="None" CssClass="auto-style6" OnClick="Button5_Click1" Text="ログアウト" />
                    </td>
                </tr>
            </table>
            <br />
            <h1>PC情報管理画面</h1>
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="新規PC登録" CssClass="auto-style6" />
            &nbsp;<asp:Button ID="Button4" runat="server" Text="登録PC一覧" OnClick="Button4_Click" CssClass="auto-style6" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
