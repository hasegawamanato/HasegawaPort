<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLoanRecords.aspx.cs" Inherits="Login.UserLoanRecords" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Loan Records</title>
    <style type="text/css">
        /* CSSスタイルはここに追加 */
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
        }
        .loan-info {
            margin-bottom: 20px;
        }
        .loan-info label {
            width: 155px;
            font-weight: bold;
            display: inline-block;
        }
        .button-bar {
            margin-top: 20px;
        }
        .button-bar .btn {
            margin-right: 10px;
            background-color: #000;
            color: #fff;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
            text-decoration: none;
        }
        .button-bar .btn:hover {
            background-color: #333;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <h1><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label> さんの貸出情報</h1>
        <div class="loan-info">
            <label><asp:Label ID="Label7" runat="server"></asp:Label></label>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
        <div class="loan-info">
            <label><asp:Label ID="Label8" runat="server"></asp:Label></label>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </div>
        <div class="loan-info">
            <label><asp:Label ID="Label11" runat="server"></asp:Label></label>
            <asp:Label ID="Label12" runat="server"></asp:Label>
        </div>
        <div class="loan-info">
            <label><asp:Label ID="Label9" runat="server"></asp:Label></label>
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        </div>
        <div class="loan-info">
            <label><asp:Label ID="Label10" runat="server"></asp:Label></label>
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
        </div>

        <div class="button-bar">
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="戻る" CssClass="btn" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="スペックの詳細" CssClass="btn" />
        </div>

        <br />

        <h2><asp:Label ID="Label6" runat="server" CssClass="auto-style3" style="color: #FF3300"></asp:Label></h2>

        <div class="button-bar">
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="戻る" CssClass="btn" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="PCのレンタルはこちら" CssClass="btn" />
        </div>

        <br />
        <br />
    </div>

    <!-- フッターやその他のコンテンツ -->
        </form>
</body>
</html>
