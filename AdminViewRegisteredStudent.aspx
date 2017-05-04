<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminViewRegisteredStudent.aspx.cs" Inherits="AdminViewRegisteredStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="header"><h4 style="text-align:center">Registered Students</h4></div>
    <div>
        <asp:SqlDataSource ID="SqlDataSourceViewRegisteredSt" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PlacementPortalDataConnectionString %>" InsertCommand="INSERT INTO [StudentSignUp] ([Id], [StName], [RollNo], [Password]) VALUES (@Id, @StName, @RollNo, @Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [StudentSignUp]" UpdateCommand="UPDATE [StudentSignUp] SET [StName] = @StName, [RollNo] = @RollNo, [Password] = @Password WHERE [Id] = @original_Id AND [StName] = @original_StName AND [RollNo] = @original_RollNo AND [Password] = @original_Password">
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="StName" Type="String" />
                <asp:Parameter Name="RollNo" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="StName" Type="String" />
                <asp:Parameter Name="RollNo" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="original_Id" Type="String" />
                <asp:Parameter Name="original_StName" Type="String" />
                <asp:Parameter Name="original_RollNo" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
        <div>
            <asp:GridView ID="GridViewRegisteredSt" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceViewRegisteredSt" ForeColor="#333333" GridLines="None" OnRowCommand="GridViewRegisteredSt_RowCommand">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkDelete" runat="server" Text="Delete" CommandName="Dl" CommandArgument='<%#Eval ("Id") %>' ToolTip="Delete Student Record" OnClientClick="return confirm('Are you sure you want to Delete the Student SignUp Details?');" ></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                    <asp:BoundField DataField="StName" HeaderText="Student Name" SortExpression="StName" />
                    <asp:BoundField DataField="RollNo" HeaderText="Roll No" SortExpression="RollNo" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
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
        </div>
    </form>
</body>
</html>
