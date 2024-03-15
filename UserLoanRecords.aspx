<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLoanRecords.aspx.cs" Inherits="Login.UserLoanRecords" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Loan Records</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 155px;
        }
        .auto-style3 {
            color: #FF3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                さんの貸出情報</h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server"></asp:Label>
                    </td>
                    <td>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                    <td>
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label11" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label12" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server"></asp:Label>
                    </td>
                    <td>
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label10" runat="server"></asp:Label>
                    </td>
                    <td>
                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="戻る" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="スペックの詳細" />
            　
            <br />
            <h2>
                <asp:Label ID="Label6" runat="server" CssClass="auto-style3"></asp:Label>
            </h2>
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="戻る" />
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="PCのレンタルはこちら" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
