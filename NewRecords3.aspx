<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRecords3.aspx.cs" Inherits="Login.NewRecords3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 53%;
        }
        .auto-style2 {
            width: 142px;
        }
        .auto-style3 {
            width: 142px;
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
        <div>
            レンタル期間を入力してください。<br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" style="text-align: right">ユーザーID：</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">PCID：</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">レンタル開始日：</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" CssClass="auto-style5" ErrorMessage="レンタル開始日を入力してください。"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">返却予定日：</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" CssClass="auto-style5" ErrorMessage="返却予定日を入力してください。"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td class="auto-style5">※間違いがないかよくご確認ください。</td>
                </tr>
            </table>
            <span class="auto-style5">※レンタル開始日はレンタル希望日の3営業日前より申請してください。</span><br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="キャンセル" Width="86px" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="レンタル確定" Width="101px" />
            <br />
        </div>
    </form>
</body>
</html>
