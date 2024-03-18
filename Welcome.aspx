<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Login.Welcome" uiCulture="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 66px;
        }
        .auto-style3 {
            height: 2px;
            width: 81px;
        }
        .auto-style4 {
            height: 2px;
            width: 922px;
        }
        .auto-style5 {
            height: 2px;
            width: 95px;
        }
        .auto-style6 {
            height: 56px;
        }
        .auto-style8 {
            color: #66FFFF;
        }
        .auto-style10 {
            color: #FFFFFF;
            text-decoration: underline;
        }
        .auto-style11 {
            height: 2px;
        }
    </style>
</head>
<body style="height: 400px">
    <form id="form1" runat="server" class="auto-style6" style="background-color: #000000">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <h1><em>
                    <asp:Button ID="Button1" runat="server" BorderStyle="None" OnClick="Button1_Click" Text="貸出情報" BackColor="Black" CssClass="auto-style10" Width="91px" />
                        </em></h1>
                </td>
                <td class="auto-style5">
                    <h1>
                    <asp:Button ID="Button2" runat="server" BorderStyle="None" OnClick="Button2_Click" Text="登録情報変更" BackColor="Black" CssClass="auto-style10" />
                    </h1>
                </td>
                <td class="auto-style4">
                    <h1>
                    <asp:Button ID="Button3" runat="server" BorderStyle="None" OnClick="Button3_Click" Text="ログアウト" BackColor="Black" CssClass="auto-style10" />
                    </h1>
                </td>
                <td class="auto-style11">
                    <p>
        <asp:Label ID="Label1" runat="server" BackColor="Black" BorderColor="#CC66FF" CssClass="auto-style8"></asp:Label>
                        <span class="auto-style8">さんこんにちは</span></p>
                </td>
            </tr>
        </table>
        <h1>PCレンタルサービス</h1>
    </form>
</body>
</html>
