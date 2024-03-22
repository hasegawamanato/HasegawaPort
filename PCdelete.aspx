<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PCdelete.aspx.cs" Inherits="Login.PCdelete" %>

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
            width: 114px;
        }
        .auto-style4 {
            width: 114px;
        }
        .auto-style5 {
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style6 {
            font-size: large;
            color: #FF3300;
        }
        .auto-style7 {
            color: #FF3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>PC削除画面</h1>
            <span class="auto-style6">このPCを削除しますか？</span><br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="キャンセル" CssClass="auto-style5" Width="179px" />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" style="background-color: #00FFFF">PCID</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="background-color: #00FFFF">PC名</td>
                    <td>
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="background-color: #00FFFF">メーカー</td>
                    <td>
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="background-color: #00FFFF">CPU</td>
                    <td>
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="background-color: #00FFFF">メモリ</td>
                    <td>
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="background-color: #00FFFF">SSD</td>
                    <td>
                        <asp:Label ID="Label6" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="background-color: #00FFFF">HDD</td>
                    <td>
                        <asp:Label ID="Label7" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="background-color: #00FFFF">購入日</td>
                    <td>
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="background-color: #00FFFF">コメント</td>
                    <td>
                        <asp:Label ID="Label9" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="削除" CssClass="auto-style5" Height="35px" Width="68px" />
            <br />
            <asp:Label ID="Label10" runat="server" CssClass="auto-style7"></asp:Label>
            <br />
            <asp:Button ID="Button3" runat="server" CssClass="auto-style5" Height="35px" OnClick="Button3_Click" Text="戻る" Visible="False" Width="68px" />
        </div>
    </form>
</body>
</html>
