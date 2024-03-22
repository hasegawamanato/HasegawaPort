<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Useredit.aspx.cs" Inherits="Login.Useredit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 86%;
        }
        .auto-style2 {
            width: 130px;
        }
        .auto-style3 {
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style4 {
            width: 130px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
            width: 512px;
        }
        .auto-style6 {
            color: #FF3300;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style8 {
            width: 512px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ユーザ情報変更</h1>
            <asp:Button ID="Button2" runat="server" CssClass="auto-style3" Height="28px" OnClick="Button2_Click1" Text="ユーザ情報を変更しない" Width="236px" />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">ユーザID</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style6" ErrorMessage="変更後のユーザIDを入力してください" ValidationGroup="new"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">名前</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style7"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style6" ErrorMessage="変更後のお名前を入力してください。" ValidationGroup="new"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="background-color: #00FFFF">メールアドレス</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style6" Display="Dynamic" ErrorMessage="変更後のメールアドレスを入力してください。" ValidationGroup="new"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" CssClass="auto-style6" Display="Dynamic" ErrorMessage="メールアドレスが正しくありません。" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="new"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="変更" CssClass="auto-style3" Width="83px" Height="34px" ValidationGroup="new"/>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
