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
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="WarehouseID" DataSourceID="Magazyny" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="WarehouseID" HeaderText="WarehouseID" InsertVisible="False" ReadOnly="True" SortExpression="WarehouseID" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Addres" HeaderText="Addres" SortExpression="Addres" />
                    <asp:BoundField DataField="Capacity" HeaderText="Capacity" SortExpression="Capacity" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <EmptyDataTemplate>
                    Brak Danych<br />
                </EmptyDataTemplate>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="WarehouseID" DataSourceID="Magazyny" ForeColor="#333333">
                <EditItemTemplate>
                    WarehouseID:
                    <asp:Label ID="WarehouseIDLabel1" runat="server" Text='<%# Eval("WarehouseID") %>' />
                    <br />
                    City:
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    Addres:
                    <asp:TextBox ID="AddresTextBox" runat="server" Text='<%# Bind("Addres") %>' />
                    <br />
                    Capacity:
                    <asp:TextBox ID="CapacityTextBox" runat="server" Text='<%# Bind("Capacity") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualizuj" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    City:
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    Addres:
                    <asp:TextBox ID="AddresTextBox" runat="server" Text='<%# Bind("Addres") %>' />
                    <br />
                    Capacity:
                    <asp:TextBox ID="CapacityTextBox" runat="server" Text='<%# Bind("Capacity") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Wstaw" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                </InsertItemTemplate>
                <ItemTemplate>
                    WarehouseID:
                    <asp:Label ID="WarehouseIDLabel" runat="server" Text='<%# Eval("WarehouseID") %>' />
                    <br />
                    City:
                    <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    Addres:
                    <asp:Label ID="AddresLabel" runat="server" Text='<%# Bind("Addres") %>' />
                    <br />
                    Capacity:
                    <asp:Label ID="CapacityLabel" runat="server" Text='<%# Bind("Capacity") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edytuj" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Usuń" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nowy" />
                </ItemTemplate>
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:FormView>
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
            <asp:Label ID="ProductDescription" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
