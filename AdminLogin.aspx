<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        <center>
            <div>
                <h4 style="text-align:right"><a href="Default.aspx" style="text-decoration:none;">Go To Homepage</a></h4>
                <h2 style="text-align:center;">Admin Login</h2><br />
                <%--<table>
                    <tr>
                        <td><asp:Label ID="lblUser" runat="server" Text="Username" CssClass="label"></asp:Label></td>
                        <td><asp:TextBox ID="txtUser" runat="server" MaxLength="12" CssClass="form-control" placeholder="Admin Username"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="label"></asp:Label></td>
                        <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="12"  CssClass="form-control" placeholder="Password"></asp:TextBox></td>
                    </tr>
                    <tr><td colspan="2"><asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" BackColor="LightBlue"></asp:Button></td></tr>
                    <tr><td colspan="2"><asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label></td></tr>
                </table>--%>
                <center>
                <div style="width:30%">
                <asp:TextBox ID="txtUser" runat="server" MaxLength="12" CssClass="form-control" placeholder="Admin Username"></asp:TextBox><br />
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="12"  CssClass="form-control" placeholder="Password"></asp:TextBox><br />
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"  CssClass="btn-block btn-primary" Width="50%"></asp:Button><br /><br />
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label><br />
                </div>
                </center>
            </div>
        </center>
    </div>
    </form>
</body>
</html>
