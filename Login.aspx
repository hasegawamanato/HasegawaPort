<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
            font-family: 游明朝, serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 400px;
            margin: 100px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .form-label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }
        .form-input {
            width: calc(100% - 12px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .submit-button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .submit-button:hover {
            background-color: #0056b3;
        }
        .error-message {
            color: #dc3545;
            margin-top: 10px;
        }
        .auto-style1 {
            color: #FF3300;
        }
        .auto-style2 {
            width: calc(100% - 12px);
            padding: 10px;
            margin-bottom: 6px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .auto-style3 {
            width: calc(100% - 12px);
            padding: 10px;
            margin-bottom: 3px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .return-button {
    background-color: #6c757d; /* ボタンの背景色をグレーに変更 */
}

.return-button:hover {
    background-color: #495057; /* マウスホバー時の背景色を変更 */
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="font-family: HGSｺﾞｼｯｸE">
            <h2>新規ユーザー登録</h2>
            <div>
                <asp:Label ID="UserIDLabel" runat="server" CssClass="form-label" Text="ユーザーID：" AssociatedControlID="TextBox1"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="error-message" ErrorMessage="ユーザーIDを入力してください" ValidationGroup="new"></asp:RequiredFieldValidator>

                <asp:Label ID="NameLabel" runat="server" CssClass="form-label" Text="名前：" AssociatedControlID="TextBox6"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" CssClass="error-message" ErrorMessage="お名前を入力してください" ValidationGroup="new"></asp:RequiredFieldValidator>

                <asp:Label ID="PasswordLabel" runat="server" CssClass="form-label" Text="パスワード：" AssociatedControlID="TextBox2"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-input" TextMode="Password"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style1"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="error-message" ErrorMessage="パスワードを入力してください" Display="Dynamic" ValidationGroup="new"></asp:RequiredFieldValidator>

                <asp:Label ID="ConfirmPasswordLabel" runat="server" CssClass="form-label" Text="パスワード確認：" AssociatedControlID="TextBox3"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-input" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox3" CssClass="error-message" ErrorMessage="確認用パスワードを入力してください" Display="Dynamic" ValidationGroup="new"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" CssClass="error-message" ErrorMessage="パスワードが一致していません" Display="Dynamic" ValidationGroup="new"></asp:CompareValidator>

                <asp:Label ID="EmailLabel" runat="server" CssClass="form-label" Text="メールアドレス：" AssociatedControlID="TextBox4"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style2" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" CssClass="error-message" ErrorMessage="メールアドレスを入力してください" Display="Dynamic" ValidationGroup="new"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" CssClass="error-message" ErrorMessage="メールアドレスが正しくありません" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ValidationGroup="new"></asp:RegularExpressionValidator>

                <asp:Label ID="ConfirmEmailLabel" runat="server" CssClass="form-label" Text="メールアドレス確認：" AssociatedControlID="TextBox5"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style3" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" CssClass="error-message" ErrorMessage="確認用メールアドレスを入力してください" Display="Dynamic" ValidationGroup="new"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" CssClass="error-message" ErrorMessage="メールアドレスが一致していません" Display="Dynamic" ValidationGroup="new"></asp:CompareValidator>

                <br />
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="auto-style1"></asp:Label>
                <br />
                <br />

                <asp:Button ID="Button1" runat="server" Text="登録" OnClick="Button1_Click1" CssClass="submit-button" ValidationGroup="new" />
                <br />
                <br />

                <asp:Button ID="Button2" runat="server" Text="ログイン画面に戻る" OnClick="Button2_Click" CssClass="submit-button return-button" />

            </div>
        </div>
    </form>
</body>
</html>
