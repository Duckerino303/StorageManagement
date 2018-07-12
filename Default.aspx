<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="WarehouseID" DataSourceID="Magazyny" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="WarehouseID" HeaderText="WarehouseID" InsertVisible="False" ReadOnly="True" SortExpression="WarehouseID" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Addres" HeaderText="Addres" SortExpression="Addres" />
                    <asp:BoundField DataField="Capacity" HeaderText="Capacity" SortExpression="Capacity" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:SqlDataSource ID="Magazyny" runat="server" ConnectionString="<%$ ConnectionStrings:MagazynyConnectionString %>" DeleteCommand="DELETE FROM [WarehouseList] WHERE [WarehouseID] = @WarehouseID" InsertCommand="INSERT INTO [WarehouseList] ([City], [Addres], [Capacity]) VALUES (@City, @Addres, @Capacity)" SelectCommand="SELECT * FROM [WarehouseList]" UpdateCommand="UPDATE [WarehouseList] SET [City] = @City, [Addres] = @Addres, [Capacity] = @Capacity WHERE [WarehouseID] = @WarehouseID">
                <DeleteParameters>
                    <asp:Parameter Name="WarehouseID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Addres" Type="String" />
                    <asp:Parameter Name="Capacity" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Addres" Type="String" />
                    <asp:Parameter Name="Capacity" Type="Int32" />
                    <asp:Parameter Name="WarehouseID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
