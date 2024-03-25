<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usersuc.aspx.cs" Inherits="Login.Usersuc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ユーザー情報変更完了</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f0f0f0;
        }
        .message-container {
            margin-top: 100px;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
            width: 400px;
            margin-left: auto;
            margin-right: auto;
        }
        .icon {
            font-size: 48px;
            color: #28a745; /* チェックマークの色 */
        }
        h1 {
            color: #333333;
        }
        p {
            color: #666666;
            font-size: 18px;
            margin-top: 20px;
        }
        .button-container {
            margin-top: 30px;
            display: flex;
            justify-content: center;
        }
        .btn {
            margin: 0 10px;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 200px;
        }
        #Button1 {
            background-color: #007bff; /* ユーザー一覧ボタンの背景色 */
            color: #ffffff; /* ユーザー一覧ボタンのテキスト色 */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="message-container">
            <span class="icon">&#10003;</span>
            <h1>ユーザー情報の変更が完了しました。</h1>
            <div class="button-container">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ユーザー一覧" CssClass="btn" />
            </div>
        </div>
    </form>
</body>
</html>
