<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Useredit.aspx.cs" Inherits="Login.Useredit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ユーザ情報変更</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            color: #333;
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

        .input-container {
            margin-bottom: 20px;
        }

        .input-label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .input-field {
            width: 100%;
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
            <h1>ユーザ情報変更</h1>
            <asp:Button ID="Button2" runat="server" CssClass="button" OnClick="Button2_Click1" Text="ユーザ情報を変更しない" />
            <div class="input-container">
                <span class="input-label">ユーザID:</span>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="input-field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="error-message" ErrorMessage="変更後のユーザIDを入力してください" ValidationGroup="new"></asp:RequiredFieldValidator>
            </div>
            <div class="input-container">
                <span class="input-label">名前:</span>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="input-field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="error-message" ErrorMessage="変更後のお名前を入力してください。" ValidationGroup="new"></asp:RequiredFieldValidator>
            </div>
            <div class="input-container">
                <span class="input-label">メールアドレス:</span>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="input-field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="error-message" Display="Dynamic" ErrorMessage="変更後のメールアドレスを入力してください。" ValidationGroup="new"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" CssClass="error-message" Display="Dynamic" ErrorMessage="メールアドレスが正しくありません。" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="new"></asp:RegularExpressionValidator>
            </div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="変更" CssClass="button" ValidationGroup="new"/>
        </div>
    </form>
</body>
</html>
