<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PCreturn2.aspx.cs" Inherits="Login.PCreturn2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FF3300;
        }
        .auto-style2 {
            color: #FFFFFF;
            background-color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>返却手続きが完了しました。</h1>
            <span class="auto-style1">※まだPCを担当者に渡していない方が速やかにお渡しください。</span><br class="auto-style1" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ホーム" CssClass="auto-style2" Height="33px" Width="107px" />
        </div>
    </form>
</body>
</html>
