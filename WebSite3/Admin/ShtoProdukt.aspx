<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ShtoProdukt.aspx.cs" Inherits="Admin_ShtoProdukt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br /><br /><br /><br /><br />
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" GridLines="Horizontal" Height="127px" Width="140px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <Fields>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Emri" HeaderText="Emri" SortExpression="Emri" />
            <asp:BoundField DataField="Pershkrimi" HeaderText="Pershkrimi" SortExpression="Pershkrimi" />
            <asp:BoundField DataField="Imazh" HeaderText="Imazh" SortExpression="Imazh" />
            <asp:BoundField DataField="Cmimi" HeaderText="Cmimi" SortExpression="Cmimi" />
            <asp:BoundField DataField="KategoriID" HeaderText="KategoriID" SortExpression="KategoriID" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    </asp:DetailsView>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="251px" Width="933px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Emri" HeaderText="Emri" SortExpression="Emri" />
            <asp:BoundField DataField="Pershkrimi" HeaderText="Pershkrimi" SortExpression="Pershkrimi" />
            <asp:BoundField DataField="Imazh" HeaderText="Imazh" SortExpression="Imazh" />
            <asp:BoundField DataField="Cmimi" HeaderText="Cmimi" SortExpression="Cmimi" />
            <asp:BoundField DataField="KategoriID" HeaderText="KategoriID" SortExpression="KategoriID" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjektDBConnectionString %>" DeleteCommand="DELETE FROM [Produkte] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Produkte] ([Emri], [Pershkrimi], [Imazh], [Cmimi], [KategoriID]) VALUES (@Emri, @Pershkrimi, @Imazh, @Cmimi, @KategoriID)" SelectCommand="SELECT * FROM [Produkte]" UpdateCommand="UPDATE [Produkte] SET [Emri] = @Emri, [Pershkrimi] = @Pershkrimi, [Imazh] = @Imazh, [Cmimi] = @Cmimi, [KategoriID] = @KategoriID WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Emri" Type="String" />
            <asp:Parameter Name="Pershkrimi" Type="String" />
            <asp:Parameter Name="Imazh" Type="String" />
            <asp:Parameter Name="Cmimi" Type="String" />
            <asp:Parameter Name="KategoriID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Emri" Type="String" />
            <asp:Parameter Name="Pershkrimi" Type="String" />
            <asp:Parameter Name="Imazh" Type="String" />
            <asp:Parameter Name="Cmimi" Type="String" />
            <asp:Parameter Name="KategoriID" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        </asp:SqlDataSource>
</asp:Content>

