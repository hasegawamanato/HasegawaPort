<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PCinfo.aspx.cs" Inherits="Login.PCinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>貸出情報</title>
    <style type="text/css">
        body {
            background-color: #FFFFFF;
            color: #000000;
            font-family: Arial, sans-serif;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            color: #000000;
            font-size: 24px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            border: 1px solid #000000;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #00FFFF;
        }

        .back-button {
            color: #FFFFFF;
            background-color: #000000;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-bottom: 10px;
            cursor: pointer;
        }

        .back-button:hover {
            background-color: #666666;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>貸出情報</h1>
            <table>
                <tr>
                    <th style="width: 109px;">貸出ID</th>
                    <td>
                        <asp:Label ID="RecordIDLabel" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th style="width: 109px;">使用者ID</th>
                    <td>
                        <asp:Label ID="UserIDLabel" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th style="width: 109px;">貸出日</th>
                    <td>
                        <asp:Label ID="LoanDateLabel" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th style="width: 109px;">返却予定日</th>
                    <td>
                         <asp:Label ID="ReturnDateLabel" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="戻る" CssClass="back-button" />
        </div>
    </form>
</body>
</html>
