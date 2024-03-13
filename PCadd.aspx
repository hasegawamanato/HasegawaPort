<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PCadd.aspx.cs" Inherits="Login.PCadd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 77%;
        }
        .auto-style2 {
            width: 94px;
        }
        .auto-style3 {
            width: 94px;
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
        }
        .auto-style5 {
            color: #FF3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>新規PC追加画面</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" style="text-align: right; background-color: #CCFF99;">PCID：</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style5" ErrorMessage="PCIDが入力されていません"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; background-color: #CCFF99;">PC名：</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" CssClass="auto-style5" ErrorMessage="PC名が入力されていません"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; background-color: #CCFF99;">メーカー：</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; background-color: #CCFF99;">CPU：</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; background-color: #CCFF99;">メモリ：</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; background-color: #CCFF99;">SSD：</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; background-color: #CCFF99;">HDD：</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; background-color: #CCFF99;">購入日：</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Width="400px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox8" CssClass="auto-style5" ErrorMessage="日付はYYYY/MM/DDという入力をしてください" ValidationExpression="\d{4}/(0[1-9]|1[0-2])/(0[1-9]|[12][0-9]|3[01])"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; background-color: #CCFF99;">コメント：</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Width="400px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <span class="auto-style5">PCID,PC名は入力必須です。<br />
        </span>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登録" />
    </form>
</body>
</html>
