<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Home</title>
    <%--Bootstrap CSS--%>
    <link rel="stylesheet" href="assets/bootstrap-3.3.7-dist/css/bootstrap.css" />
    <link rel="stylesheet" href="assets/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css"/>
    <script src="assets/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="assets/bootstrap-3.3.7-dist/jquery-1.12.4.min.js"></script>
    <script src="assets/bootstrap-3.3.7-dist/bootstrapjs.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <hr />
            <h2 style="text-align:center">Admin Home</h2>
            <header>Welcome&nbsp<asp:Label ID="lblWelcome" runat="server" ForeColor="Red"></asp:Label><span style="float:right;"><asp:Button ID="btnLogOut" runat="server" Text="Log Out" BackColor="Red" OnClick="btnLogOut_Click"></asp:Button></span></header>
            <div>
                <center>
                <div>
                    <hr />
                    <br />
                    <h4 style="text-align:center"><a href="AdminViewRegisteredStudent.aspx">View Registered Student List</a></h4>
                    <h4 style="text-align:center"><a href="AdminViewRegisteredStudent.aspx">Change Student UserName / Password</a></h4>
                    <h4 style="text-align:center"><a href="AdminStudentDetailsView.aspx">View Student Details</a></h4>
                    <h4 style="text-align:center"><a href="AdminStudentDetailsEdit.aspx">Enter Student Academic Details</a></h4>

                    <asp:Button ID="btnUpdateRollNo" runat="server" Text="Edit Student Personal OR Academic Details" CssClass="btn-link" OnClick="btnUpdateRollNo_Click"></asp:Button><br />
                    <asp:Label ID="lblUpdateRollNo" runat="server" ForeColor="Red"></asp:Label>&nbsp<asp:TextBox ID="txtUpdateRollNo" runat="server"></asp:TextBox>&nbsp
                    <%--<asp:RequiredFieldValidator ID="validUpdateRollNo" runat="server" ErrorMessage="Please Enter a Roll No" ControlToValidate="txtUpdateRollNo" Display="Dynamic" Enabled="False" ForeColor="Red" Visible="False" SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
                    <asp:Button ID="btnUpdateDetails" runat="server" Text="Update Details" OnClick="btnUpdateDetails_Click"></asp:Button>&nbsp
                    <asp:Button ID="btnUpdateCancel" runat="server" Text="Cancel" OnClick="btnUpdateCancel_Click"></asp:Button><br /><br />
                    <asp:Label ID="lblError" runat="server" ForeColor="Red" Enabled="False" Visible="False"></asp:Label><asp:Button ID="btnReEnter" runat="server" Text="Re-Enter Roll No." Visible="false" Enabled="false" OnClick="btnReEnter_Click"></asp:Button><br /><br />
                    
                    <h4><a href="AdminStudentAcademicDetailsView.aspx">View All the Students Academic Details</a></h4>
                    <h4><a href="AdminDeleteData.aspx">Delete Student Complete Data (Login + Academic + Personal)</a></h4>
                    <h4><a href="AdminViewCompany.aspx">View Company Details</a></h4>
                    
                    
                    <%--<a href="AdminViewStudentRequest.aspx">View Student Requests</a><br />--%>
                    <%--<a href="NewAd.aspx">View New Recruitment Adverts Received</a><br />--%>
                    <%--<a href="#">View All Adverts</a><br />
                    <a href="#">Post Recruitment Advertisement</a><br />
                    <a href="#">Sort Students</a><br />--%>
                </div>
                </center>
            </div>
        </div>
    </form>
</body>
</html>