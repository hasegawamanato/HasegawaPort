<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRecords4.aspx.cs" Inherits="Login.NewRecords4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>レンタル申請完了</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            text-align: center;
            padding-top: 50px;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333;
        }
        p {
            color: #666;
            margin-bottom: 20px;
        }
        /* Existing button style */
        .auto-style1 {
            color: #FFFFFF;
            background-color: #33CCFF;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
            font-weight: bold;
        }
        .auto-style1:hover {
            background-color: #333333;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
    <div class="container">
        <h1>レンタル申請が完了しました。</h1>
        <p>申請日に担当者よりPCをお渡しいたしますので少々お待ちください。</p>
        <strong><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ホームへ戻る" CssClass="auto-style1" />
        </strong>
    </div>
      </form>
</body>
</html>
