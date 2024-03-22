<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRecords3.aspx.cs" Inherits="Login.NewRecords3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
        .heading {
            font-size: large;
            font-weight: bold;
            color: #000000; /* 黒色のテキスト */
        }
        .cancel-button, .submit-button {
            background-color: #000000; /* 黒色の背景 */
            color: #ffffff; /* 白色のテキスト */
            border: none; /* ボーダーをなしにする */
            cursor: pointer; /* マウスオーバー時のカーソル */
            padding: 10px 20px; /* ボタンの余白 */
            text-transform: uppercase; /* テキストを大文字にする */
            margin-bottom: 20px; /* ボタン下の余白 */
            width: 100%; /* ボタンの幅を100%に設定 */
            box-sizing: border-box; /* ボタンの余白を含むボックスサイズ */
        }
        table {
            width: 100%;
            border-collapse: collapse; /* セルの間隔を0にする */
            margin-bottom: 20px; /* テーブル下の余白 */
        }
        table td, table th {
            border: 1px solid #000000; /* セルの境界線 */
            padding: 8px; /* セル内の余白 */
            text-align: left; /* テキストを左寄せ */
        }
        .form-label, .auto-style1 {
            background-color: #000000; /* ラベルの背景色 */
            color: #FFFFFF; /* ラベルのテキスト色 */
            width: 200px; /* ラベルの幅を広めに設定 */
            padding: 8px; /* ラベルの余白 */
        }
        .form-input {
            width: calc(100% - 216px); /* テキストボックスの幅を計算 */
            /* ラベルの幅とテキストボックスの余白を考慮 */
        }
        .error-message {
            color: #FF3300; /* エラーメッセージのテキスト色 */
        }
        .info-message {
            color: #000000; /* 情報メッセージのテキスト色 */
        }
        .auto-style2 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #999999; /* 黒色の背景 */
            color: #ffffff; /* 白色のテキスト */
/* ボーダーをなしにする */cursor: pointer; /* マウスオーバー時のカーソル *
            padding: 10px 20px
/* ボタンの余白 */text-transform: uppercase; /* テキストを大文字にする */
            margin-bottom: 20px; /* ボタン下の余白 */
            width: 100%; /* ボタンの幅を100%に設定 */
            box-sizing: border-box; /* ボタンの余白を含むボックスサイズ */
        }
        .auto-style3 {
            margin-bottom: 4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <span class="heading">レンタル期間を入力してください。</span><br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="レンタルをキャンセルする" CssClass="auto-style2" />
            <table class="auto-style3">
                <tr>
                    <td class="form-label">ユーザーID</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False" CssClass="form-input"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">PCID</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Enabled="False" CssClass="form-input"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">レンタル開始日</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" CssClass="form-input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" CssClass="error-message" ErrorMessage="レンタル開始日を入力してください。" ValidationGroup="new"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">返却予定日</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Date" CssClass="form-input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" CssClass="error-message" ErrorMessage="返却予定日を入力してください。" ValidationGroup="new"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                </table>
            <br />
            <span class="info-message">※レンタル開始日はレンタル希望日の3営業日前より申請してください。</span><br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="レンタル確定" ValidationGroup="new" CssClass="submit-button" />
        </div>
    </form>
</body>
</html>
