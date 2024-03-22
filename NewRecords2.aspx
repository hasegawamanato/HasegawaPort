<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRecords2.aspx.cs" Inherits="Login.NewRecords2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Selected Computer Details</title>
    <style type="text/css">
        body {
            background-color: #ffffff; /* 白色の背景 */
            color: #000000; /* 黒色のテキスト */
            font-family: Arial, sans-serif; /* フォントの指定 */
        }
        .container {
            max-width: 800px; /* コンテンツの幅を指定 */
            margin: 0 auto; /* 中央揃え */
            padding: 20px; /* コンテンツと端との間の余白 */
        }
        h1 {
            color: #000000; /* 黒色の見出しテキスト */
        }
        table {
            width: 100%;
            border-collapse: collapse; /* セルの間隔を0にする */
            margin-bottom: 20px; /* テーブルと次の要素の間の余白 */
        }
        table td, table th {
            border: 1px solid #000000; /* セルの境界線 */
            padding: 8px; /* セル内の余白 */
        }
        .confirm-buttons {
            margin-top: 20px; /* ボタンと前の要素の間の余白 */
        }
        .btn {
            padding: 10px 20px; /* ボタンの余白 */
            background-color: #000000; /* 黒色の背景 */
            color: #ffffff; /* 白色のテキスト */
            border: none; /* ボーダーをなしにする */
            cursor: pointer; /* マウスオーバー時のカーソル */
            border-radius: 5px; /* 角丸 */
            text-transform: uppercase; /* テキストを大文字にする */
            margin-right: 10px; /* ボタン間の間隔 */
        }
        .btn:last-child {
            margin-right: 0; /* 最後のボタンの右側の余白をなしにする */
        }
        .btn:hover {
            background-color: #333333; /* マウスオーバー時の背景色 */
        }
        /* PCID、PC名などのセルのスタイル */
        table td.auto-style2 {
            text-align: left;
            background-color: #000000; /* 黒色の背景 */
            color: #ffffff; /* 白色のテキスト */
        }
        .auto-style1 {
            width: 84%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>確認画面</h1>
            <p>このPCをレンタルしますか？</p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="width: 85px">PCID</td>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 85px">PC名</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 85px">メーカー</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 85px">CPU</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 85px">メモリ</td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 85px">SSD</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 85px">HDD</td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 85px">購入日</td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 85px">コメント</td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <div class="confirm-buttons">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="いいえ" CssClass="btn" />
                <asp:Button ID="Button2" runat="server" Text="はい" OnClick="Button2_Click" CssClass="btn" />
            </div>
        </div>
    </form>
</body>
</html>
