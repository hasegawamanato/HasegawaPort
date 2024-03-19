<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PCedit.aspx.cs" Inherits="YourNamespace.PCedit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PC Edit</title>
    <style type="text/css">
        .auto-style1 {
            width: 280px;
        }
        .auto-style2 {
            width: 64px;
        }
        .auto-style3 {
            color: #FFFFFF;
            background-color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            PCID：<asp:Label ID="Label1" runat="server"></asp:Label>
            の情報編集<br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="戻る" CssClass="auto-style3" Height="24px" Width="153px" />
            <br />
            <table>
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">PC名:</td>
                    <td class="auto-style1"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">メーカー:</td>
                    <td class="auto-style1"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">CPU:</td>
                    <td class="auto-style1"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">メモリ:</td>
                    <td class="auto-style1"><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">SSD:</td>
                    <td class="auto-style1"><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">HDD:</td>
                    <td class="auto-style1"><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">購入日:</td>
                    <td class="auto-style1"><asp:TextBox ID="TextBox8" runat="server" TextMode="Date"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #00FFFF">コメント:</td>
                    <td class="auto-style1"><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
                </tr>
                </table>
            <br />
            <br />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="更新" CssClass="auto-style3" Height="38px" Width="67px" />
        </div>
    </form>
</body>
</html>
