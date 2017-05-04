<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentPage.aspx.cs" Inherits="StudentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">
        <header> Welcome <strong><asp:Label ID="lblWelcome" runat="server" ForeColor="Red"></asp:Label></strong><span style="float:right;"><asp:Button runat="server" ID="btnLogout" Text="Log Out" BackColor="Red" OnClick="btnLogout_Click" /></span></header>
        <h1 style="text-align:center;">Student Home</h1><br />
        <center>

        <h4><a href="StudentDetailsView.aspx" style="text-decoration:none;">View your Details</a></h4>
        <h4><a href="StudentDetailsEdit.aspx" style="text-decoration:none;">Edit your Personal Details</a></h4>
        <h4><a href="StudentRequest.aspx" style="text-decoration:none;">Request Academic Data Edit/Update</a></h4>
        <h4><a href="StudentRequest.aspx" style="text-decoration:none;">Change Password</a></h4>

        </center>
    </div>
    </form>
</body>
</html>