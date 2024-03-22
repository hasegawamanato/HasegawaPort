<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRecords4.aspx.cs" Inherits="Login.NewRecords4" %>

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
        <h1>レンタル申請が完了しました。<br />
        </h1>
        <br />
        申請日に担当者よりPCをお渡しいたしますので少々お待ちください。<br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ホーム" CssClass="auto-style1" />
    </form>
</body>
</html>
