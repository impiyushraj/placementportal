<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Login</title>
    
    <%--Bootstrap CSS--%>
    <link rel="stylesheet" href="assets/bootstrap-3.3.7-dist/css/bootstrap.css" />
    <link rel="stylesheet" href="assets/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css"/>
    <script src="assets/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="assets/bootstrap-3.3.7-dist/jquery-1.12.4.min.js"></script>
    <script src="assets/bootstrap-3.3.7-dist/bootstrapjs.js"></script>
    <style>
        .content-resize {
            width: 30%;
            margin: auto;
        }

        .row {
            width: 99%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row" style="margin-top: 60px;">
            <div class="container-fluid">
                <h4 style="text-align:right"><a href="Default.aspx" style="text-decoration:none;">Go To Homepage</a></h4>
                <div>
                    <center><h3 class="content-resize">Student Login</h3></center>
                    <br />
                    <center>
                    <div class="content-resize">
                        <asp:Label runat="server" CssClass="label">Roll No</asp:Label>&nbsp<asp:TextBox ID="txtRollNo" runat="server" MaxLength="10" placeholder="Roll No" CssClass="form-control"></asp:TextBox><br />
                        <asp:Label runat="server" CssClass="label">Password</asp:Label>&nbsp<asp:TextBox ID="txtPassword" runat="server" MaxLength="16" TextMode="Password" placeholder="Password" CssClass="form-control"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label><br />
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn-success" OnClick="btnLogin_Click" /><br />
                        <br />
                    </div>
                    <p>Don't Have an account. <a href="SignUp.aspx" style="text-decoration:none;">Sign Up Here.</a></p>
                    <p>Forgot Password. <a href="ForgotPassword.aspx" style="text-decoration:none;">Retrieve your Password.</a></p>
                    </center>
                </div>
                
            </div>
        </div>
    </form>
</body>
</html>
