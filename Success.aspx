<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="Login.Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登録が完了しました。</title>
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
            justify-content: space-around;
        }
        .btn {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        .btn-primary {
            background-color: #007bff; /* プライマリボタンの色 */
            color: #ffffff;
        }
        .btn-secondary {
            background-color: #6c757d; /* セカンダリボタンの色 */
            color: #ffffff;
        }
        .btn-primary:hover, .btn-secondary:hover {
            filter: brightness(90%); /* ホバー時の明るさ調整 */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="message-container">
            <span class="icon">&#10003;</span>
            <h1>登録が完了しました。</h1>
            <p>登録が完了しました！</p>
            <p>ご登録いただきありがとうございます。</p>
            <div class="button-container">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="PC情報管理画面" CssClass="btn btn-primary" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="新規PC登録画面" CssClass="btn btn-secondary" />
            </div>
        </div>
    </form>
</body>
</html>
