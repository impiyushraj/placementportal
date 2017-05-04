<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminStudentAcademicDetailsView.aspx.cs" Inherits="AdminStudentAcademicDetailsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="header"><h3 style="text-align:center">View All Student Academic Details</h3></div> 
            <asp:GridView ID="GridViewStAcDetView" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" CellPadding="4" BackColor="white" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" DataSourceID="SqlDataSourceStudentAcademicView" AllowPaging="true" AllowSorting="true" PageSize="20" OnRowCommand="GridViewStAcDetView_RowCommand" OnSelectedIndexChanged="GridViewStAcDetView_SelectedIndexChanged">
            <Columns>
                <%--<asp:CommandField ShowSelectButton="True" />--%>
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit" CommandName="Ed" CommandArgument='<%#Eval ("RollNo") %>' ToolTip="Edit Student Record" OnClientClick="return confirm('Are you sure you want to Edit the Student Details?');"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkDelete" runat="server" Text="Delete" CommandName="Dl" CommandArgument='<%#Eval ("Id") %>' ToolTip="Delete Student Record" OnClientClick="return confirm('Are you sure you want to Delete the Student Details?');"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="RollNo" HeaderText="Roll No" SortExpression="RollNo" />
                <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="AddYear" HeaderText="Addmission Year" SortExpression="AddYear" />
                <asp:BoundField DataField="BackTotal" HeaderText="Back Total" SortExpression="BackTotal" />  
                <asp:BoundField DataField="BackLive" HeaderText="Back Live" SortExpression="BackLive" />
                <asp:BoundField DataField="BackCode" HeaderText="Back Code" SortExpression="BackCode" />              
                <asp:BoundField DataField="GapYear" HeaderText="Gap Year" SortExpression="GapYear" />
                <asp:BoundField DataField="Percent10th" HeaderText="10th %" SortExpression="Percent10th" />
                <asp:BoundField DataField="Year10" HeaderText="10 Pass Year" SortExpression="Year10" />
                <asp:BoundField DataField="Board10" HeaderText="10 Board" SortExpression="Board10" />
                <asp:BoundField DataField="Percent12th" HeaderText="12th %" SortExpression="Percent12th" />
                <asp:BoundField DataField="Year12" HeaderText="12 Pass Year" SortExpression="Year12" />
                <asp:BoundField DataField="Board12" HeaderText="12 Board" SortExpression="Board12" />
                <asp:BoundField DataField="Sem1MO" HeaderText="Sem1 Obtained" SortExpression="Sem1MO" />
                <asp:BoundField DataField="Sem1TM" HeaderText="Sem1 Total" SortExpression="Sem1TM" />
                <asp:BoundField DataField="Sem2MO" HeaderText="Sem2 Obtained" SortExpression="Sem2MO" />
                <asp:BoundField DataField="Sem2TM" HeaderText="Sem2 Total" SortExpression="Sem2TM" />
                <asp:BoundField DataField="Sem3MO" HeaderText="Sem3 Obtained" SortExpression="Sem3MO" />
                <asp:BoundField DataField="Sem3TM" HeaderText="Sem3 Total" SortExpression="Sem3TM" />
                <asp:BoundField DataField="Sem4MO" HeaderText="Sem4 Obtained" SortExpression="Sem4MO" />
                <asp:BoundField DataField="Sem4TM" HeaderText="Sem4 Total" SortExpression="Sem4TM" />
                <asp:BoundField DataField="Sem5MO" HeaderText="Sem5 Obtained" SortExpression="Sem5MO" />
                <asp:BoundField DataField="Sem5TM" HeaderText="Sem5 Total" SortExpression="Sem5TM" />
                <asp:BoundField DataField="Sem6MO" HeaderText="Sem6 Obtained" SortExpression="Sem6MO" />
                <asp:BoundField DataField="Sem6TM" HeaderText="Sem6 Total" SortExpression="Sem6TM" />
                <asp:BoundField DataField="Sem7MO" HeaderText="Sem7 Obtained" SortExpression="Sem7MO" />
                <asp:BoundField DataField="Sem7TM" HeaderText="Sem7 Total" SortExpression="Sem7TM" />
                <asp:BoundField DataField="Sem8MO" HeaderText="Sem8 Obtained" SortExpression="Sem8MO" />
                <asp:BoundField DataField="Sem8TM" HeaderText="Sem8 Total" SortExpression="Sem8TM" />
                <asp:BoundField DataField="TotalMO" HeaderText="Total Obtained" SortExpression="TotalMO" />
                <asp:BoundField DataField="TotalTM" HeaderText="Total Marks" SortExpression="TotalTM" />
                <asp:BoundField DataField="Aggregate" HeaderText="Aggregate %" SortExpression="Aggregate" />
                
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <PagerSettings Mode="NumericFirstLast" Position="TopAndBottom" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceStudentAcademicView" runat="server" ConnectionString="<%$ ConnectionStrings:PlacementPortalDataConnectionString %>" SelectCommand="SELECT * FROM [StudentDetailsAcademic]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
