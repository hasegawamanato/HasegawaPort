﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usersuc.aspx.cs" Inherits="Login.Usersuc" %>

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
            <h1>ユーザー情報の変更が完了しました。</h1>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ユーザー一覧" CssClass="auto-style1" Height="37px" Width="132px" />
        </div>
    </form>
</body>
</html>
