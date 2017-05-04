<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentDetailsEdit.aspx.cs" Inherits="StudentDetailsEdit" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register Assembly="BasicFrame.WebControls.BasicDatePicker" Namespace="BasicFrame.WebControls" TagPrefix="BDP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Details Edit</title>
    
    <link rel="stylesheet" href="assets/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <script src="assets/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="assets/bootstrap-3.3.7-dist/jquery-1.12.4.min.js"></script>
    <%--<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <style type="text/css">
        .auto-style9 {
            margin-left:20px;
            width: 200px;
            color:dodgerblue;
        }
        .auto-style2 {
            width: 140px;
            color:dodgerblue;
        }
        .auto-style3 {
            width: 110px;
            color:dodgerblue;
        }
        .auto-style4 {
            width: 200px;
        }
        .auto-style5 {
            width: 140px;
            color:dodgerblue;
            height: 57px;
        }
        .auto-style6 {
            width: 200px;
            height: 57px;
        }
        .form-control {
            height: 40px;
            font-size: 16px;
            border: 3px solid orange;
            color: darkblue;
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
        .table tbody tr td, .table tbody tr th{
            border:none;
        }
    </style>
</head>
<%--<body style="background-image:url('blur5.jpg'); background-repeat:no-repeat; background-attachment:fixed; background-size:cover;">--%>
<body>
    
    <%--<form id="form1" runat="server" style="width:70%; margin-left:15%; margin-top:5%; margin-bottom:5%; background-image:url('blur5.jpg'); background-attachment:fixed; background-repeat:no-repeat; background-size:cover; ">--%>
    <form id="form1" runat="server" style="width:70%; margin-left:15%; margin-top:5%; margin-bottom:5%; border:thin;">
    <div class="header"><h2 style="text-align:center">Edit Your Personal Details</h2></div>
        <div class="navbar"></div>
        <div>
            <header> Welcome <strong><asp:Label ID="lblWelcome" runat="server" ForeColor="Red"></asp:Label></strong>
                <span style="float:right;"><asp:Button ID="btnLogOut" runat="server" Text="Log Out" OnClick="btnLogOut_Click" BackColor="Red" /></span>
            </header>
            <br />
            <h2 style="text-align:center;">Personal Details</h2>
        <center>
        <table class="table">
            
            <tbody>
                <tr>
                    <th class="auto-style2">Student Name</th>
                    <td class="auto-style4"><asp:TextBox ID="txtStudentName" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
                    <th class="auto-style9">Gender</th>
                    <td class="auto-style4">
                        <asp:RadioButtonList ID="rbGender" runat="server" RepeatDirection="Horizontal" Width="140px">
                            <asp:ListItem Text="Male" Value="1">Male</asp:ListItem>
                            <asp:ListItem Text="Female" Value="2">Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style2">University Roll No.</th>
                    <td class="auto-style4"><asp:TextBox ID="txtRollNo" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
                    <th class="auto-style9">Student No.</th>
                    <td class="auto-style4"><asp:TextBox ID="txtStudentNo" runat="server" CssClass="form-control"  MaxLength="8"></asp:TextBox></td>
                </tr>
                <tr>
                    <th class="auto-style2">Father's Name</th>
                    <td class="auto-style4"><asp:TextBox ID="txtFather" runat="server" CssClass="form-control"  MaxLength="50"></asp:TextBox></td>
                    <th class="auto-style9">Mother's Name</th>
                    <td class="auto-style4"><asp:TextBox ID="txtMother" runat="server" CssClass="form-control"  MaxLength="50"></asp:TextBox></td>
                </tr>
                <tr>
                    <th class="auto-style2">Mobile Number</th>
                    <td class="auto-style4"><asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"  MaxLength="10"></asp:TextBox></td>
                    <th class="auto-style9">Email ID</th>
                    <td class="auto-style4"><asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"  MaxLength="50"></asp:TextBox></td>
                </tr>
                <tr>
                    <th class="auto-style2">Date of Birth</th>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlDOBDate" runat="server" CssClass="dropdown">
                            <asp:ListItem Selected="True" Value="0">Date</asp:ListItem>
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                            <asp:ListItem Value="3">6</asp:ListItem>
                            <asp:ListItem Value="7">7</asp:ListItem>
                            <asp:ListItem Value="8">8</asp:ListItem>
                            <asp:ListItem Value="9">9</asp:ListItem>
                            <asp:ListItem Value="10">10</asp:ListItem>
                            <asp:ListItem Value="11">11</asp:ListItem>
                            <asp:ListItem Value="12">12</asp:ListItem>
                            <asp:ListItem Value="13">13</asp:ListItem>
                            <asp:ListItem Value="14">14</asp:ListItem>
                            <asp:ListItem Value="15">15</asp:ListItem>
                            <asp:ListItem Value="16">16</asp:ListItem>
                            <asp:ListItem Value="17">17</asp:ListItem>
                            <asp:ListItem Value="18">18</asp:ListItem>
                            <asp:ListItem Value="19">19</asp:ListItem>
                            <asp:ListItem Value="20">20</asp:ListItem>
                            <asp:ListItem Value="21">21</asp:ListItem>
                            <asp:ListItem Value="22">22</asp:ListItem>
                            <asp:ListItem Value="23">23</asp:ListItem>
                            <asp:ListItem Value="24">24</asp:ListItem>
                            <asp:ListItem Value="25">25</asp:ListItem>
                            <asp:ListItem Value="26">26</asp:ListItem>
                            <asp:ListItem Value="27">27</asp:ListItem>
                            <asp:ListItem Value="28">28</asp:ListItem>
                            <asp:ListItem Value="29">29</asp:ListItem>
                            <asp:ListItem Value="30">30</asp:ListItem>
                            <asp:ListItem Value="31">31</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlDOBMonth" runat="server" CssClass="dropdown">
                            <asp:ListItem Selected="True" Value="0">Month</asp:ListItem>
                            <asp:ListItem Value="1">January</asp:ListItem>
                            <asp:ListItem Value="2">February</asp:ListItem>
                            <asp:ListItem Value="3">March</asp:ListItem>
                            <asp:ListItem Value="4">April</asp:ListItem>
                            <asp:ListItem Value="5">May</asp:ListItem>
                            <asp:ListItem Value="6">June</asp:ListItem>
                            <asp:ListItem Value="7">July</asp:ListItem>
                            <asp:ListItem Value="8">August</asp:ListItem>
                            <asp:ListItem Value="9">September</asp:ListItem>
                            <asp:ListItem Value="10">October</asp:ListItem>
                            <asp:ListItem Value="11">November</asp:ListItem>
                            <asp:ListItem Value="12">December</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlDOBYear" runat="server" CssClass="dropdown">
                            <asp:ListItem Selected="True" Value="0">Year</asp:ListItem>
                            <asp:ListItem Value="1985">1985</asp:ListItem>
                            <asp:ListItem Value="1986">1986</asp:ListItem>
                            <asp:ListItem Value="1987">1987</asp:ListItem>
                            <asp:ListItem Value="1988">1988</asp:ListItem>
                            <asp:ListItem Value="1989">1989</asp:ListItem>
                            <asp:ListItem Value="1990">1990</asp:ListItem>
                            <asp:ListItem Value="1991">1991</asp:ListItem>
                            <asp:ListItem Value="1992">1992</asp:ListItem>
                            <asp:ListItem Value="1993">1993</asp:ListItem>
                            <asp:ListItem Value="1994">1994</asp:ListItem>
                            <asp:ListItem Value="1995">1995</asp:ListItem>
                            <asp:ListItem Value="1996">1996</asp:ListItem>
                            <asp:ListItem Value="1997">1997</asp:ListItem>
                            <asp:ListItem Value="1998">1998</asp:ListItem>
                            <asp:ListItem Value="1999">1999</asp:ListItem>
                            <asp:ListItem Value="2000">2000</asp:ListItem>
                            <asp:ListItem Value="2001">2001</asp:ListItem>
                            <asp:ListItem Value="2002">2002</asp:ListItem>
                            <asp:ListItem Value="2002">2003</asp:ListItem>
                            <asp:ListItem Value="2004">2004</asp:ListItem>
                            <asp:ListItem Value="2005">2005</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr><td colspan="4" style="font-weight:bold; font-size:large;">Address Details</td></tr>
                <tr><td colspan="4"><asp:CheckBox ID="cbAddressSame" runat="server" Text="Check The Box if Permanent Address same as Local Address" OnCheckedChanged="cbAddressSame_CheckedChanged" AutoPostBack="true"></asp:CheckBox></td></tr>
                <tr>
                    <th colspan="2">Local Address</th>
                    <th>Permanent Address</th>    
                </tr>
                <tr>
                    <th class="auto-style2">House/Flat/Room No</th>
                    <td class="auto-style4"><asp:TextBox ID="txtLHouse" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox></td>
                    <th class="auto-style2">House/Flat/Room No</th>
                    <td class="auto-style4"><asp:TextBox ID="txtPHouse" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox></td>
                </tr>
                <tr>
                    <th class="auto-style2">Address Line 1</th>
                    <td class="auto-style4"><asp:TextBox ID="txtLAddress1" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="2" MaxLength="60"></asp:TextBox></td>
                    <th class="auto-style2">Address Line 1</th>
                    <td class="auto-style4"><asp:TextBox ID="txtPAddress1" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="2" MaxLength="60"></asp:TextBox></td>
                </tr>
                <tr>
                    <th class="auto-style2">Address Line 2</th>
                    <td class="auto-style4"><asp:TextBox ID="txtLAddress2" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="2" MaxLength="60"></asp:TextBox></td>
                    <th class="auto-style2">Address Line 2</th>
                    <td class="auto-style4"><asp:TextBox ID="txtPAddress2" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="2" MaxLength="60"></asp:TextBox></td>
                </tr>
                <tr>
                    <th class="auto-style2">Street/Road</th>
                    <td class="auto-style4"><asp:TextBox ID="txtLStreet" runat="server" CssClass="form-control" MaxLength="40"></asp:TextBox></td>
                    <th class="auto-style2">Street/Road</th>
                    <td class="auto-style4"><asp:TextBox ID="txtPStreet" runat="server" CssClass="form-control" MaxLength="40"></asp:TextBox></td>
                </tr>
                <tr>
                    <th class="auto-style2">City</th>
                    <td class="auto-style4"><asp:TextBox ID="txtLCity" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox></td>
                    <th class="auto-style2">City</th>
                    <td class="auto-style4"><asp:TextBox ID="txtPCity" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox></td>
                </tr>
                <tr>
                    <th class="auto-style2">State</th>
                    <td class="auto-style4"><asp:TextBox ID="txtLState" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox></td>
                    <th class="auto-style2">State</th>
                    <td class="auto-style4"><asp:TextBox ID="txtPState" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox></td>
                </tr>
                <tr>
                    <th class="auto-style2">Pincode</th>
                    <td class="auto-style4"><asp:TextBox ID="txtLPincode" runat="server" CssClass="form-control" MaxLength="6"></asp:TextBox></td>
                    <th class="auto-style2">Pincode</th>
                    <td class="auto-style4"><asp:TextBox ID="txtPPincode" runat="server" CssClass="form-control"  MaxLength="6"></asp:TextBox></td>
                </tr>
            </tbody>
            </table>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"></asp:Button>
        </center>
    </div>
        <div class="navbar"></div>
    </form>
</body>
</html>