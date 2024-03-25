<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PCadd.aspx.cs" Inherits="Login.PCadd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>新規PC追加画面</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }
        .container {
            width: 80%;
            margin: 50px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"],
        input[type="date"] {
            width: calc(100% - 10px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            margin-top: 5px;
        }
        input[type="submit"],
        input[type="button"] {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }
        input[type="submit"]:hover,
        input[type="button"]:hover {
            background-color: #0056b3;
        }
        .error-message {
            color: #dc3545;
            margin-top: 5px;
        }
        .auto-style1 {
            color: #FF3300;
        }
        .auto-style2 {
            width: 36%;
            margin: 50px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            height: 867px;
        }
        .auto-style3 {
            color: #FF3300;
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style2">
        <h1>新規PC追加画面</h1>
        <div class="form-group">
            <label for="TextBox10">PCID</label>
            <asp:TextBox ID="TextBox10" runat="server" Width="100%"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox10" CssClass="auto-style3" ErrorMessage="PCIDが入力されていません" ValidationGroup="new" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label for="TextBox2">PC名</label>
            <asp:TextBox ID="TextBox2" runat="server" Width="100%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style3" ErrorMessage="PC名が入力されていません" ValidationGroup="new"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label for="TextBox3">メーカー</label>
            <asp:TextBox ID="TextBox3" runat="server" Width="100%"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox4">CPU</label>
            <asp:TextBox ID="TextBox4" runat="server" Width="100%"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox5">メモリ</label>
            <asp:TextBox ID="TextBox5" runat="server" Width="100%"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox6">SSD</label>
            <asp:TextBox ID="TextBox6" runat="server" Width="100%"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox7">HDD</label>
            <asp:TextBox ID="TextBox7" runat="server" Width="100%"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox8">購入日</label>
            <asp:TextBox ID="TextBox8" runat="server" Width="100%" TextMode="Date"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox9">コメント</label>
            <asp:TextBox ID="TextBox9" runat="server" Width="100%" MaxLength="40"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登録" ValidationGroup="new" CssClass="auto-style8" style="background-color: #000000" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="キャンセル" CssClass="auto-style8" style="background-color: #808080" Width="121px" />
        </div>
        
    </form>
</body>
</html>
