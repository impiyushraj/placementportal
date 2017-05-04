<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <link rel="stylesheet" href="assets/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <script src="assets/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="assets/bootstrap-3.3.7-dist/jquery-1.12.4.min.js"></script>

    <style type="text/css">
        .auto-style4 {
            width: 200px;
        }

        .form-control {
            height: 40px;
            font-size: 16px;
            border: 3px solid orange;
        }

            .form-control::-moz-placeholder {
                color: darkgoldenrod;
                opacity: 1;
            }

            .form-control:-ms-input-placeholder {
                color: darkgoldenrod;
            }

            .form-control::-webkit-input-placeholder {
                color: darkgoldenrod;
            }

        .table tbody tr td, .table tbody tr th {
            border: none;
        }

        .label {
            border: 0px;
            font-size: 100%;
            color: darkorange;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--Forgot Password--%>
            <h3 style="text-align: center;">Forgot Password</h3>
            <hr />
            <div>
                <br />
                <div>
                    <h4 style="text-align: center;">Enter Your Details Below</h4>
                    <br />
                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <asp:TextBox ID="txtRollNo" runat="server" CssClass="form-control" placeholder="Student Roll No"></asp:TextBox><br />
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Registered Email"></asp:TextBox>
                        </div>
                        <div class="col-md-3"></div>
                    </div>
                    <br />
                <center><asp:Button ID="btnForgot" runat="server" Text="Recover Password" CssClass="btn-success" OnClick="btnForgot_Click"/></center>
                <br />
                <asp:Label ID="lbltxt" runat="server"></asp:Label>
                </div>
                <hr />
                <div class="footer">
                    <h3 style="text-align:center;"><a href="Default.aspx" style="text-decoration:none;">Go Back To Homepage</a></h3>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
