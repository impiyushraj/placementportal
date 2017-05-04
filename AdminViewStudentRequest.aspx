<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminViewStudentRequest.aspx.cs" Inherits="AdminViewStudentRequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridViewStRequest" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceStRequest" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="RollNo" HeaderText="Roll No" SortExpression="RollNo" />
                <asp:BoundField DataField="Request" HeaderText="Request" SortExpression="Request" />
                <asp:BoundField DataField="Field" HeaderText="Field" SortExpression="Field" />
                <asp:BoundField DataField="Old" HeaderText="Old Entry" SortExpression="Old" />
                <asp:BoundField DataField="New" HeaderText="New Entry" SortExpression="New" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceStRequest" runat="server" ConnectionString="<%$ ConnectionStrings:PlacementPortalDataConnectionString %>" SelectCommand="SELECT * FROM [StudentRequest]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
