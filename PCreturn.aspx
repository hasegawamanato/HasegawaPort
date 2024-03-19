<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PCreturn.aspx.cs" Inherits="Login.PCreturn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 67%;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style5 {
            height: 20px;
            width: 99px;
        }
        .auto-style6 {
            color: #FF3300;
        }
        .auto-style7 {
            color: #FFFFFF;
            background-color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>PCID:<asp:Label ID="Label1" runat="server"></asp:Label>
            のスペック詳細</h1>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返却キャンセル" CssClass="auto-style7" />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5" style="text-align: left; background-color: #00FFFF">PC名</td>
                    <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: left; background-color: #00FFFF">メーカー</td>
                    <td class="auto-style2">
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: left; background-color: #00FFFF">CPU</td>
                    <td>
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: left; background-color: #00FFFF">メモリ</td>
                    <td>
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: left; background-color: #00FFFF">SSD</td>
                    <td>
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: left; background-color: #00FFFF">HDD</td>
                    <td>
            <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: left; background-color: #00FFFF">購入日</td>
                    <td>
            <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: left; background-color: #00FFFF">コメント</td>
                    <td>
            <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <span class="auto-style6">※返却は担当者に返却してから返却ボタンを押してください。<br />
            </span><asp:Button ID="Button1" runat="server" Text="返却" OnClick="Button1_Click" CssClass="auto-style7" Height="34px" Width="60px" />
        </div>
    </form>
</body>
</html>
