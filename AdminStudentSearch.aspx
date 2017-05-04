<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminStudentSearch.aspx.cs" Inherits="AdminStudentSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <h3>Select/Sort Students</h3>
            <asp:Label ID="Label1" runat="server" Text="Course"></asp:Label>&nbsp
            <asp:CheckBoxList ID="cblCourse" runat="server" RepeatDirection="Horizontal" >
                <asp:ListItem>BTech</asp:ListItem>
                <asp:ListItem>MTech</asp:ListItem>
                <asp:ListItem>MCA</asp:ListItem>
                <asp:ListItem>MBA</asp:ListItem>
            </asp:CheckBoxList><br />
            <asp:Label ID="Label2" runat="server" Text="Year"></asp:Label>&nbsp
            <asp:CheckBoxList ID="cblYear" runat="server"  RepeatDirection="Horizontal" >
                <asp:ListItem>I</asp:ListItem>
                <asp:ListItem>II</asp:ListItem>
                <asp:ListItem>III</asp:ListItem>
                <asp:ListItem>IV</asp:ListItem>
            </asp:CheckBoxList><br />
            <asp:Label ID="Label3" runat="server" Text="Branch"></asp:Label>&nbsp
            <asp:CheckBoxList ID="cblBranch" runat="server" RepeatDirection="Horizontal" >
                <asp:ListItem>CE</asp:ListItem>
                <asp:ListItem>CSE</asp:ListItem>
                <asp:ListItem>ECE</asp:ListItem>
                <asp:ListItem>EN</asp:ListItem>
                <asp:ListItem>EI</asp:ListItem>
                <asp:ListItem>IT</asp:ListItem>
                <asp:ListItem>ME</asp:ListItem>
            </asp:CheckBoxList><br />
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Min 10th %"></asp:TextBox><br />
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Max 10th %"></asp:TextBox><br />
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Min 12th %"></asp:TextBox><br />
            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="Max 12th %"></asp:TextBox><br />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Min Graduation Aggregate %"></asp:TextBox><br />
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Max Graduation Aggregate %"></asp:TextBox><br />
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceSearch">
                <Columns>
                    <asp:BoundField DataField="RollNo" HeaderText="RollNo" SortExpression="RollNo" />
                    <asp:BoundField DataField="StName" HeaderText="StName" SortExpression="StName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                </Columns>
            </asp:GridView>
            <%--<asp:SqlDataSource ID="SqlDataSourceSearch" runat="server" ConnectionString="<%$ ConnectionStrings:PlacementPortalDataConnectionString %>" SelectCommand="SELECT [RollNo], [Course], [Branch], [Year], [Aggregate], [BackTotal], [BackLive] FROM [StudentDetailsAcademic] WHERE ([AddYear] = @AddYear)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="2013" Name="AddYear" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>--%>
            <asp:SqlDataSource ID="SqlDataSourceSearch" runat="server" ConnectionString="<%$ ConnectionStrings:PlacementPortalDataConnectionString %>" SelectCommand="SELECT a.Course, a.Branch, a.Year, a.Aggregate, b.StName, b.RollNo, b.Email, FROM StudentDetailsAcademic AS a INNER JOIN StudentDetailsPersonal AS b ON a.RollNo = b.RollNo"></asp:SqlDataSource>
            
        </div>
    </form>
</body>
</html>
