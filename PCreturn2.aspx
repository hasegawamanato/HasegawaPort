<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PCreturn2.aspx.cs" Inherits="Login.PCreturn2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>返却完了</title>
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
        .auto-style1 {
            color: #FF3300;
        }
        .button-container {
            margin-top: 30px;
        }
        .btn {
            background-color: #007bff;
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .auto-style2 {
            margin-top: 100px;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
            width: 509px;
            margin-left: auto;
            margin-right: auto;
        }
        .auto-style3 {
            color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <h1>返却手続きが完了しました。</h1>
            <span class="auto-style3">ご利用いただき、誠にありがとうございました。<br />
            <br />
            </span><span class="auto-style1">
            <br />
            <strong>※まだPCを担当者に渡していない方が速やかにお渡しください。</strong></span><strong><br class="auto-style1" />
            </strong>
            <div class="button-container">
                <asp:Button ID="Button1" runat="server" Text="ホーム" OnClick="Button1_Click" CssClass="btn" />
            </div>
        </div>
    </form>
</body>
</html>
