<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Login.Welcome" %>

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
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
            width: 81px;
        }
        .auto-style4 {
            height: 20px;
            width: 1077px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" BorderStyle="None" OnClick="Button1_Click" Text="貸出情報" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" BorderStyle="None" OnClick="Button1_Click" Text="登録情報変更" />
                </td>
                <td class="auto-style2">
        <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <h1>PC貸出管理</h1>
        <hr />
        <br />
        <br />
    </form>
</body>
</html>
