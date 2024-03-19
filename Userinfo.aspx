<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Userinfo.aspx.cs" Inherits="Login.Userinfo" %>

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
            width: 127px;
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
            <h1>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            さんの貸出情報</h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">貸出ID</td>
                    <td>
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">ユーザID</td>
                    <td>
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">PCID</td>
                    <td>
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">貸出開始日</td>
                    <td>
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">返却予定日</td>
                    <td>
                        <asp:Label ID="Label6" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="戻る" CssClass="auto-style3" Height="29px" Width="53px" />
        </div>
    </form>
</body>
</html>
