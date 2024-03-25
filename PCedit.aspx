<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PCedit.aspx.cs" Inherits="YourNamespace.PCedit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PC Edit</title>
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
            margin-bottom: 20px;
        }

        .message {
            font-size: 18px;
            color: #FF3300;
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
            background-color: #00FFFF;
        }

        th {
            width: 109px;
        }

        .back-button {
            background-color: #000000;
            color: #FFFFFF;
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

        .auto-style2 {
            width: 109px;
            background-color: #FFFFFF;
        }

        .auto-style4 {
            background-color: #66FFFF;
            width: 32px;
        }
        .auto-style5 {
            color: #FF3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>PCID：<asp:Label ID="Label1" runat="server"></asp:Label>の情報編集</h1>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="戻る" CssClass="back-button" Width="153px" />
            <table>
                <tr>
                    <th class="auto-style4">PC名:</th>
                    <td class="auto-style2"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" CssClass="auto-style5" ErrorMessage="変更後のPC名を入力してください" ValidationGroup="new"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style4">メーカー:</th>
                    <td class="auto-style2"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th class="auto-style4">CPU:</th>
                    <td class="auto-style2"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th class="auto-style4">メモリ:</th>
                    <td class="auto-style2"><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th class="auto-style4">SSD:</th>
                    <td class="auto-style2"><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th class="auto-style4">HDD:</th>
                    <td class="auto-style2"><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th class="auto-style4">購入日:</th>
                    <td class="auto-style2"><asp:TextBox ID="TextBox8" runat="server" TextMode="Date"></asp:TextBox></td>
                </tr>
                <tr>
                    <th class="auto-style4">コメント:</th>
                    <td class="auto-style2"><asp:TextBox ID="TextBox9" runat="server" MaxLength="40" Width="279px"></asp:TextBox></td>
                </tr>
            </table>
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="更新" CssClass="back-button" Width="153px" />
        </div>
    </form>
</body>
</html>
