<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 62%;
        }
        .auto-style2 {
            width: 128px;
        }
        .auto-style3 {
            width: 128px;
            height: 20px;
            background-color: #CCFFCC;
        }
        .auto-style4 {
            height: 20px;
            background-color: #99CCFF;
        }
        .auto-style5 {
            width: 128px;
            height: 23px;
            background-color: #CCFFCC;
        }
        .auto-style6 {
            height: 23px;
            width: 724px;
        }
        .auto-style7 {
            color: #FF3300;
        }
        .auto-style8 {
            height: 376px;
        }
        .auto-style9 {
            height: 20px;
            width: 724px;
        }
        .auto-style10 {
            width: 724px;
        }
        .auto-style11 {
            width: 128px;
            background-color: #CCFFCC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style8">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4" style="font-family: 游明朝; background-color: #00FFFF;">新規ユーザー登録</td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-family: 游明朝; text-align: right;">ユーザーID：</td>
            <td class="auto-style9" style="font-family: 游明朝">
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="199px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style7" ErrorMessage="ユーザーIDを入力してください"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-family: 游明朝; text-align: right;">名前：</td>
            <td class="auto-style9" style="font-family: 游明朝">
                <asp:TextBox ID="TextBox6" runat="server" Width="199px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" CssClass="auto-style7" ErrorMessage="お名前を入力してください"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-family: 游明朝; text-align: right;">パスワード：</td>
            <td class="auto-style9" style="font-family: 游明朝">
                <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox1_TextChanged" Width="199px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style7" ErrorMessage="パスワードを入力してください"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="font-family: 游明朝; text-align: right;">パスワード確認：</td>
            <td class="auto-style6" style="font-family: 游明朝">
                <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox1_TextChanged" Width="199px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" CssClass="auto-style7" ErrorMessage="パスワードが一致していません"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-family: 游明朝; text-align: right;">メールアドレス：</td>
            <td class="auto-style9" style="font-family: 游明朝">
                <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox1_TextChanged" Width="199px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" CssClass="auto-style7" Display="Dynamic" ErrorMessage="メールアドレスを入力してください"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" CssClass="auto-style7" Display="Dynamic" ErrorMessage="メールアドレスが正しくありません" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="font-family: 游明朝; text-align: right;">メールアドレス確認：</td>
            <td class="auto-style10" style="font-family: 游明朝">
                <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox1_TextChanged" Width="199px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" CssClass="auto-style7" ErrorMessage="メールアドレスが一致していません"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-family: 游明朝">&nbsp;</td>
            <td class="auto-style10" style="font-family: 游明朝">&nbsp;</td>
        </tr>
    </table>
        <asp:Button ID="Button1" runat="server" Text="登録" OnClick="Button1_Click1" />
        <div>
        </div>
    </form>
</body>
</html>
