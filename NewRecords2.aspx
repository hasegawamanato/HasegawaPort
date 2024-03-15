<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRecords2.aspx.cs" Inherits="Login.NewRecords2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Selected Computer Details</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 65px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>確認画面</h1>
            このPCをレンタルしますか？<br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align: left; background-color: #00FFFF">PCID</td>
                    <td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: left; background-color: #00FFFF">PC名</td>
                    <td>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: left; background-color: #00FFFF">メーカー</td>
                    <td>
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: left; background-color: #00FFFF">CPU</td>
                    <td>
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: left; background-color: #00FFFF">メモリ</td>
                    <td>
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: left; background-color: #00FFFF">SSD</td>
                    <td>
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: left; background-color: #00FFFF">HDD</td>
                    <td>
            <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: left; background-color: #00FFFF">購入日</td>
                    <td>
            <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: left; background-color: #00FFFF">コメント</td>
                    <td>
            <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="いいえ" />
            　<asp:Button ID="Button2" runat="server" Text="はい" OnClick="Button2_Click" />
            <br />
        </div>
    </form>
</body>
</html>
