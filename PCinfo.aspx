<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PCinfo.aspx.cs" Inherits="Login.PCinfo" %>

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
            width: 109px;
        }
        .auto-style3 {
            width: 109px;
            height: 21px;
        }
        .auto-style4 {
            height: 21px;
        }
        .auto-style5 {
            color: #FFFFFF;
            background-color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>貸出情報</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="text-align: left; background-color: #00FFFF;">貸出ID</td>
                <td>
                    <asp:Label ID="RecordIDLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: left; background-color: #00FFFF;">使用者ID</td>
                <td>
                    <asp:Label ID="UserIDLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: left; background-color: #00FFFF;">貸出日</td>
                <td>
                    <asp:Label ID="LoanDateLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: left; background-color: #00FFFF;">返却予定日</td>
                <td class="auto-style4">
                     <asp:Label ID="ReturnDateLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="戻る" CssClass="auto-style5" Width="57px" />
    </form>
</body>
</html>
