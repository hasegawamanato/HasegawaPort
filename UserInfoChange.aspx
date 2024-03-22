<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserInfoChange.aspx.cs" Inherits="Login.UserInfoChange" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 215px;
        }
        .auto-style3 {
            width: 215px;
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
        }
        .auto-style5 {
            color: #FFFFFF;
        }
        .auto-style6 {
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style7 {
            width: 215px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            width: 215px;
            height: 25px;
        }
        .auto-style10 {
            height: 25px;
        }
        .auto-style11 {
            color: #FF3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>登録情報変更画面</h1>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ユーザー情報を変更しない" BackColor="Black" BorderStyle="None" CssClass="auto-style5" />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7" style="background-color: #00FFFF">ユーザーID</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style11" ErrorMessage="変更後のユーザIDを入力してください" ValidationGroup="new"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="background-color: #00FFFF">パスワード</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style11" ErrorMessage="変更後パスワードを入力してください" ValidationGroup="new"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" style="background-color: #00FFFF">メールアドレス</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style11" Display="Dynamic" ErrorMessage="変更後のメールアドレスを入力してください" ValidationGroup="new"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" CssClass="auto-style11" Display="Dynamic" ErrorMessage="メールアドレスが正しくありません。" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="new"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="background-color: #00FFFF">メールアドレス確認</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" CssClass="auto-style11" Display="Dynamic" ErrorMessage="確認用メールアドレスを入力してください" ValidationGroup="new"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox5" CssClass="auto-style11" Display="Dynamic" ErrorMessage="メールアドレスが一致していません" ValidationGroup="new"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">名前</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" CssClass="auto-style11" ErrorMessage="変更後のお名前を入力してください"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <br />
            <br />
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="変更" CssClass="auto-style6" Height="30px" Width="59px" ValidationGroup="new" />
        </div>
    </form>
</body>
</html>
