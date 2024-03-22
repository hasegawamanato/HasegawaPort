<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login3.aspx.cs" Inherits="Login.Login3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ログイン画面</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        #login-container {
            width: 400px;
            margin: 100px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.1);
        }
        h1 {
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="login-container">
            <h1>ログイン画面</h1>
            <div>
                <asp:Label ID="UserNameLabel" runat="server" CssClass="form-label" Text="ID：" AssociatedControlID="UserNameTextBox"></asp:Label>
                <asp:TextBox ID="UserNameTextBox" runat="server" CssClass="form-input"></asp:TextBox>

                <asp:Label ID="PasswordLabel" runat="server" CssClass="form-label" Text="パスワード：" AssociatedControlID="PasswordTextBox"></asp:Label>
                <asp:TextBox ID="PasswordTextBox" runat="server" CssClass="form-input" TextMode="Password"></asp:TextBox>

                <asp:Label ID="ErrorMessageLabel" runat="server" CssClass="error-message"></asp:Label>

                <asp:Button ID="LoginButton" runat="server" OnClick="LoginButton_Click1" Text="ログイン" CssClass="submit-button" />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="新規登録" CssClass="submit-button" style="margin-top: 10px; background-color: #28a745;" />
            </div>
        </div>
    </form>
</body>
</html>
