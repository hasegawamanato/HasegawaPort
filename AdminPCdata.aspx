<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPCdata.aspx.cs" Inherits="YourNamespace.AdminPCdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin PC Data</title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 60px;
        }
        .auto-style3 {
            width: 125px;
        }
        .auto-style4 {
            width: 95px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><strong>
                        <asp:Button ID="Button1" runat="server" BorderStyle="None" OnClick="Button1_Click" Text="Home" Width="101px" />
                        </strong></td>
                    <td class="auto-style4">
                        <asp:Button ID="Button6" runat="server" BorderStyle="None" OnClick="Button6_Click" Text="PC情報管理" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button2" runat="server" BorderStyle="None" Text="ユーザー管理" OnClick="Button2_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <h1>PC一覧</h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Pcid" DataSourceID="SqlDataSource2" Width="912px" OnRowCommand="GridView1_RowCommand">
    <Columns>
        <asp:BoundField DataField="Pcid" HeaderText="Pcid" ReadOnly="True" SortExpression="Pcid" />
        <asp:BoundField DataField="Pcname" HeaderText="Pcname" SortExpression="Pcname" />
        <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" SortExpression="Manufacturer" />
        <asp:BoundField DataField="CPU" HeaderText="CPU" SortExpression="CPU" />
        <asp:BoundField DataField="MemoryCapacity" HeaderText="MemoryCapacity" SortExpression="MemoryCapacity" />
        <asp:BoundField DataField="SSD" HeaderText="SSD" SortExpression="SSD" />
        <asp:BoundField DataField="HDD" HeaderText="HDD" SortExpression="HDD" />
        <asp:BoundField DataField="PurchaseDate" HeaderText="PurchaseDate" SortExpression="PurchaseDate" />
        <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />

         <asp:TemplateField HeaderText="コマンド">
            <ItemTemplate>
                <div class="btn-group">
                    <asp:Button ID="DetailsButton" runat="server" CssClass="btn btn-info" CommandName="Details" CommandArgument='<%# Container.DataItemIndex %>' Text="詳細情報" />
                    <asp:Button ID="EditButton" runat="server" CssClass="btn btn-primary" CommandName="Edit" CommandArgument='<%# Container.DataItemIndex %>' Text="変更" />
                    <asp:Button ID="DeleteButton" runat="server" CssClass="btn btn-danger" CommandName="Delete" CommandArgument='<%# Container.DataItemIndex %>' Text="削除" />
                </div>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
                <EmptyDataTemplate>
                    PC ID
                </EmptyDataTemplate>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Computers]"></asp:SqlDataSource>
            <br />
            
            <br />
            <br />
        </div>
    </form>
</body>
</html>
