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
            width: 146px;
        }
        .auto-style3 {
            width: 146px;
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        貸出情報<br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="text-align: right">貸出ID：</td>
                <td>
                    <asp:Label ID="RecordIDLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">使用者ID：</td>
                <td>
                    <asp:Label ID="UserIDLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">貸出日：</td>
                <td>
                    <asp:Label ID="LoanDateLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">返却予定日：</td>
                <td class="auto-style4">
                     <asp:Label ID="ReturnDateLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
