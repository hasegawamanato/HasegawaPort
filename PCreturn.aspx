<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PCreturn.aspx.cs" Inherits="Login.PCreturn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        body {
            background-color: #ffffff; /* 白色の背景 */
            color: #000000; /* 黒色のテキスト */
            display: flex;
            justify-content: center; /* コンテンツを中央に配置 */
            align-items: flex-start; /* コンテンツをページの上部に配置 */
            height: 100vh; /* 画面の高さいっぱいに表示 */
            margin: 0; /* 余白をリセット */
            padding-top: 20px; /* ページの上部に余白を追加 */
        }

        .auto-style1 {
            width: 67%;
        }
        .auto-style2 {
            height: 20px;
            background-color: #FFFFFF;
        }
        .auto-style5 {
            height: 20px;
            width: 99px;
        }
        .auto-style6 {
            color: #FF3300;
        }
        .auto-style7 {
            color: #ffffff; /* 白色のテキスト */
            background-color: #000000; /* 黒色の背景 */
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s; /* ホバー時のトランジション */
        }

        .auto-style7:hover {
            background-color: #333333; /* ホバー時の背景色をグレーに変更 */
        }

        /* テーブルの背景色を変更 */
        table {
            background-color: #f0f0f0; /* グレーの背景 */
        }
        .auto-style8 {
            background-color: #FFFFFF;
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
                    <td class="auto-style5" style="text-align: left; background-color: #000000; color: #ffffff;">PC名</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: left; background-color: #000000; color: #ffffff;">メーカー</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: left; background-color: #000000; color: #ffffff;">CPU</td>
                    <td class="auto-style8">
                        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: left; background-color: #000000; color: #ffffff;">メモリ</td>
                    <td class="auto-style8">
                        <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: left; background-color: #000000; color: #ffffff;">SSD</td>
                    <td class="auto-style8">
                        <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: left; background-color: #000000; color: #ffffff;">HDD</td>
                    <td class="auto-style8">
                        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: left; background-color: #000000; color: #ffffff;">購入日</td>
                    <td class="auto-style8">
                        <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: left; background-color: #000000; color: #ffffff;">コメント</td>
                    <td class="auto-style8">
                        <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <span class="auto-style6">※返却は担当者に返却してから返却ボタンを押してください。<br />
            </span><asp:Button ID="Button1" runat="server" Text="返却" OnClick="Button1_Click" CssClass="auto-style7" />
        </div>
    </form>
</body>
</html>
