<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login2.aspx.cs" Inherits="Login.Login2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
            background-color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>登録が完了しました。</h1>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="ログイン画面に進む" OnClick="Button1_Click" CssClass="auto-style1" />
        </div>
    </form>
</body>
</html>
