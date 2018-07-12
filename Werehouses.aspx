<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="Werehouses.aspx.cs" Inherits="Werehouses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<style type="text/css">
		.auto-style1 {
			font-size: x-large;
			
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: auto; margin-right : auto;text-align:center">
        	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MagazynyConnectionString %>" DeleteCommand="DELETE FROM [WarehouseList] WHERE [WarehouseID] = @original_WarehouseID" InsertCommand="INSERT INTO [WarehouseList] ([City], [Addres], [Capacity]) VALUES (@City, @Addres, @Capacity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [WarehouseList]" UpdateCommand="UPDATE [WarehouseList] SET [City] = @City, [Addres] = @Addres, [Capacity] = @Capacity WHERE [WarehouseID] = @original_WarehouseID">
				<DeleteParameters>
					<asp:Parameter Name="original_WarehouseID" Type="Int32" />
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
					<asp:Parameter Name="original_WarehouseID" Type="Int32" />
				</UpdateParameters>
			</asp:SqlDataSource>
			<asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="5px" CellPadding="3" DataKeyField="WarehouseID" DataSourceID="SqlDataSource1" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" GridLines="Both" Height="611px" HorizontalAlign="Justify" RepeatLayout="Flow" Width="410px" style="margin-left: 2px">
				<FooterStyle BackColor="White" ForeColor="#000066" />
				<HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
				<HeaderTemplate>
					<span class="auto-style1">Available Werehouses</span>
				</HeaderTemplate>
				<ItemStyle ForeColor="#000066" />
				<ItemTemplate>
					WarehouseID:
					<asp:Label ID="WarehouseIDLabel" runat="server" Text='<%# Eval("WarehouseID") %>' />
					<br />
					City:
					<asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
					<br />
					Addres:
					<asp:Label ID="AddresLabel" runat="server" Text='<%# Eval("Addres") %>' />
<br />
					Capacity:
					<asp:Label ID="CapacityLabel" runat="server" Text='<%# Eval("Capacity") %>' />
					<br />
					<br />
				</ItemTemplate>
				<SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
			</asp:DataList>
        </div>
    </form>
</body>
</html>
