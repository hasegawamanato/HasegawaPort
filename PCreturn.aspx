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
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center; /* コンテンツを中央に配置 */
            align-items: flex-start; /* コンテンツをページの上部に配置 */
            height: 100vh; /* 画面の高さいっぱいに表示 */
            margin: 0; /* 余白をリセット */
            padding-top: 20px; /* ページの上部に余白を追加 */
        }

        .container {
            width: 80%;
            margin:0 auto;
        }

        h1 {
            color: #ffffff; /* 白色のテキスト */
            background-color: #000000; /* 黒色の背景 */
            padding: 20px;
            margin-bottom: 20px;
        }

        .button {
            color: #ffffff; /* 白色のテキスト */
            background-color: #000000; /* 黒色の背景 */
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s; /* ホバー時のトランジション */
            margin-bottom: 20px;
        }

        .button:hover {
            background-color: #333333; /* ホバー時の背景色をグレーに変更 */
        }

        table {
            width: 100%;
            background-color: #f0f0f0; /* グレーの背景 */
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            border: 1px solid #000000;
            padding: 8px;
            text-align: left;
            background-color: #000000; /* 黒色の背景 */
            color: #ffffff; /* 白色のテキスト */
        }

        .message {
            font-size: 18px;
            color: #FF3300;
        }
        .auto-style1 {
            width: 13%;
        }
        .auto-style2 {
            background-color: #FFFFFF;
        }
        .auto-style3 {
            color: #000000;
        }
        .auto-style4 {
            color: #000000;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="auto-style2"><span class="auto-style3">PCID:</span><asp:Label ID="Label1" runat="server" CssClass="auto-style4"></asp:Label>
                <span class="auto-style3">のスペック詳細</span></h1>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返却キャンセル" CssClass="button" Width="246px" />
            <br />
            <table>
                <tr>
                    <th class="auto-style1">PC名</th>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="" CssClass="auto-style3"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">メーカー</th>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="" CssClass="auto-style3"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">CPU</th>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="" CssClass="auto-style3"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">メモリ</th>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="" CssClass="auto-style3"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">SSD</th>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="" CssClass="auto-style3"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">HDD</th>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="" CssClass="auto-style3"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">購入日</th>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Text="" CssClass="auto-style3"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">コメント</th>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" Text="" CssClass="auto-style3"></asp:Label>
                    </td>
                </tr>
            </table>
            <span class="message">※返却は担当者に返却してから返却ボタンを押してください。<br /></span>
            <asp:Button ID="Button1" runat="server" Text="返却" OnClick="Button1_Click" CssClass="button" Width="253px" />
        </div>
    </form>
</body>
</html>
