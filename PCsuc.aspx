<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PCsuc.aspx.cs" Inherits="Login.PCsuc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
            font-size: large;
            background-color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>PC情報を変更しました。</h1>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="PC一覧" CssClass="auto-style1" Height="33px" Width="99px" />
        </div>
    </form>
</body>
</html>
