<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminViewCompany.aspx.cs" Inherits="AdminViewCompany" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="header"><h3 style="text-align:center">Registered Companies</h3></div>
        <asp:GridView ID="GridViewCompany" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" CellPadding="4" ForeColor="#333333" GridLines="None" DataSourceID="SqlDataSourceViewCompany" AllowPaging="true" AllowSorting="true" PageSize="20" OnRowCommand="GridViewCompany_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="CpName" HeaderText="Name" SortExpression="CpName" />
                <asp:BoundField DataField="CpWebsite" HeaderText="Website" SortExpression="CpWebsite" />
                <asp:BoundField DataField="CpAddress" HeaderText="Address" SortExpression="CpAddress" />
                <asp:BoundField DataField="CpSector" HeaderText="Sector" SortExpression="CpSector" />
                <asp:BoundField DataField="CpHRName" HeaderText="HR Name" SortExpression="CpHRName" />
                <asp:BoundField DataField="CpHRMobile" HeaderText="HR Mobile" SortExpression="CpHRMobile" />
                <asp:BoundField DataField="CpHREmail" HeaderText="HR Email" SortExpression="CpHREmail" />
                <asp:BoundField DataField="CpHRLandline" HeaderText="HR Landline" SortExpression="CpHRLandline" />
                <asp:BoundField DataField="CpType" HeaderText="Type" SortExpression="CpType" />
                <asp:TemplateField HeaderText="Delete Company">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkDelete" runat="server" Text="Delete" CommandName="Dl" CommandArgument='<%#Eval ("Id") %>' ToolTip="Delete Company Record" OnClientClick="return confirm('Are you sure you want to Delete the Student Details?');" ></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerSettings Mode="NumericFirstLast" Position="TopAndBottom" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceViewCompany" runat="server" ConnectionString="<%$ ConnectionStrings:PlacementPortalDataConnectionString %>" SelectCommand="SELECT * FROM [Company]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
