<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Login.Welcome"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>PCレンタルサービス</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 72px;
        }
        .auto-style3 {
            height: 22px;
            width: 81px;
        }
        .auto-style4 {
            height: 22px;
            width: 922px;
        }
        .auto-style5 {
            height: 22px;
            width: 95px;
        }
        .auto-style6 {
            height: 87px;
        }
        .auto-style8 {
            color: #66FFFF;
        }
        .auto-style10 {
            color: #FFFFFF;
            text-decoration: underline;
        }
        .auto-style11 {
            height: 22px;
        }
    </style>
</head>
<body style="height: 1396px">
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
        <hr style="background-color: #000000" />

        <h2>サービス概要</h2>
        <p>社内向けのPCレンタルサービスです。使いやすいインターフェースと柔軟なレンタルプランで、会社のニーズに合ったPCを提供します。</p>

        <h2>注意事項</h2>
        <ul>
            <li>返却期限は厳守してください。</li>
            <li>PCの不具合や紛失には責任を負います。</li>
            <li>レンタル料金や保証金に関する詳細は、サイト内の料金ページをご覧ください。</li>
        </ul>

        <h2>サービス特長</h2>
        <ul>
            <li>柔軟なレンタル期間</li>
            <li>最新のPC機種の提供</li>
            <li>24時間のカスタマーサポート</li>
        </ul>
    </form>
</body>
</html>
