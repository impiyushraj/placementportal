<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Sign Up</title>
    <style>
        .row {
            width: 99%;
        }

        .content-resize {
            width: 30%;
            margin: auto;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row" style="margin-top: 60px;">
        <div class="container-fluid">
            <div>
                <center>
                <center><h3 class="content-resize">Student Sign Up</h3></center><br />
                <div class="content-resize">

                <asp:TextBox ID="txtRollNo" runat="server" CssClass="form-control" placeholder="University Roll No." MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorRollNo" runat="server" ErrorMessage="Please Enter Your Roll No." ControlToValidate="txtRollNo" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorRollNo" runat="server" ControlToValidate="txtRollNo" ErrorMessage="Please Enter Correct Roll No." ForeColor="Red" ValidationExpression="((0|1)[0-9]{1}(027)(00|10|13|14|21|31|32|40)[0-9]{3})|((0|1)[0-9]{1}(820)(70|72)[0-9]{3})"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="lblExist" runat="server" ForeColor="Red"></asp:Label><br />
                
                
                <asp:TextBox ID="txtStudentName" runat="server" CssClass="form-control" placeholder="Full Name" MaxLength="35"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorStudentName" runat="server" ErrorMessage="Please Enter Your Name" ControlToValidate="txtStudentName" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorStudentName" runat="server" ControlToValidate="txtStudentName" ErrorMessage="Only Alphabets allowed" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator> <br />
                
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password                            (6-12 characters length)" MaxLength="12" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression = "^[\s\S]{6,}$">Minimum 6 characters required</asp:RegularExpressionValidator>
                <br />
                
                <asp:TextBox ID="txtRePassword" runat="server" CssClass="form-control" placeholder="Re-Enter Password             (6-12 characters length)" TextMode="Password" MaxLength="12"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorRePassword" runat="server" ControlToValidate="txtRePassword" ErrorMessage="Please Re-Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtRePassword" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression = "^[\s\S]{6,}$">Minimum 6 characters required</asp:RegularExpressionValidator>
                <asp:CompareValidator ID="CompareValidatorRePassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRePassword" ErrorMessage="Passwords Do Not Match" ForeColor="Red"></asp:CompareValidator>
                <br />
                
                <br />
                
                <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" CssClass="btn-success" OnClick="btnSignUp_Click" /><br /><br />
                <%--<h4>Already Signed Up. <a href="#myModal" data-toggle="modal" style="text-decoration: none;"><b>Login Here</b></a></h4>--%>
                <h4>Already Signed Up. <a href="Login.aspx" style="text-decoration: none;"><b>Login Here</b></a></h4>
                
                </div>
                </center>
            </div>
        </div>
    </div>
</asp:Content>

