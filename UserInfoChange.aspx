<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserInfoChange.aspx.cs" Inherits="Login.UserInfoChange" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登録情報変更画面</title>
    <style type="text/css">
        body {
            background-color: #f2f2f2;
            color: #333;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
            background-color: #f2f2f2;
        }

        th {
            background-color: #ddd;
            font-weight: bold;
        }

        .input-container {
            width: 100%;
            margin-bottom: 10px;
        }

        .input-label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .input-field {
            width: calc(100% - 10px);
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .error-message {
            color: #FF3300;
            font-size: 14px;
            margin-top: 5px;
        }

        .button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 3px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>登録情報変更画面</h1>
            <p>以下のフォームに変更後の情報を入力してください。</p>
            <div class="input-container">
                <span class="input-label">ユーザーID:</span>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="input-field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="error-message" ErrorMessage="ユーザーIDを入力してください" ValidationGroup="new"></asp:RequiredFieldValidator>
            </div>
            <div class="input-container">
                <span class="input-label">パスワード:</span>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="error-message" ErrorMessage="パスワードを入力してください" ValidationGroup="new"></asp:RequiredFieldValidator>
            </div>
            <div class="input-container">
                <span class="input-label">メールアドレス:</span>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="input-field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="error-message" ErrorMessage="メールアドレスを入力してください" ValidationGroup="new" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" CssClass="error-message" ErrorMessage="正しい形式のメールアドレスを入力してください" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="new" Display="Dynamic"></asp:RegularExpressionValidator>
            </div>
            <div class="input-container">
                <span class="input-label">メールアドレス確認:</span>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="input-field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" CssClass="error-message" ErrorMessage="確認用メールアドレスを入力してください" ValidationGroup="new" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox5" CssClass="error-message" ErrorMessage="メールアドレスが一致していません" ValidationGroup="new" Display="Dynamic"></asp:CompareValidator>
            </div>
            <div class="input-container">
                <span class="input-label">名前:</span>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="input-field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" CssClass="error-message" ErrorMessage="名前を入力してください" ValidationGroup="new"></asp:RequiredFieldValidator>
            </div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="変更" CssClass="button" ValidationGroup="new" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="キャンセル" CssClass="button" />
        </div>
    </form>
</body>
</html>
