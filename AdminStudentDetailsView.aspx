<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminStudentDetailsView.aspx.cs" Inherits="AdminStudentDetailsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Details</title>

    <link rel="stylesheet" href="assets/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <script src="assets/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="assets/bootstrap-3.3.7-dist/jquery-1.12.4.min.js"></script>
    <%--<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <style type="text/css">
        .auto-style2 {
            width: 140px;
            color:dodgerblue;
        }

        .auto-style3 {
            width: 110px;
            color:darkblue;
        }

        .auto-style1{
            width: 110px;
            color:dodgerblue;
        }

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

        .table tbody tr td, .table tbody tr th{
            border:none;
        }

        .label {
            border: 0px;
            font-size: 100%;
            color: darkorange;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="width: 70%; margin-left: 15%; margin-top: 5%; margin-bottom: 5%;">
        <div class="header"><h2 style="text-align:center">View Student Details</h2></div>
        <div class="navbar"></div>
        <div>

            <header> Welcome <strong><asp:Label ID="lblWelcome" runat="server" ForeColor="Red"></asp:Label></strong>
                <span style="float:right;"><asp:Button ID="btnLogOut" runat="server" Text="Log Out" OnClick="btnLogOut_Click" BackColor="Red" /></span>
            </header>
            <br />
            <center><asp:TextBox class="auto-style4" ID="txtStRollNo" runat="server" CssClass="form-control" placeholder="Student Roll No" Width="50%"></asp:TextBox><br /></center>
            <center><asp:Button ID="btnView" runat="server" Text="View Details" OnClick="btnView_Click" CssClass="btn-block btn-primary" Width="20%"/></center>
            <br />
            <h2 style="text-align: center;">Personal Details</h2>
            <center>
            <table class="table">
            <tbody>
                <tr>
                    <th class="auto-style2">Student Name</th>
                    <td class="auto-style4"><asp:Label ID="lblStudentName" runat="server" CssClass="label"></asp:Label></td>
                    <th class="auto-style2">Gender</th>
                    <td class="auto-style4"><asp:Label ID="lblGender" runat="server" CssClass="label"></asp:Label></td>
                </tr>
                <tr>
                    <th class="auto-style2">University Roll No.</th>
                    <td class="auto-style4"><asp:Label ID="lblRollNo" runat="server" CssClass="label"></asp:Label></td>
                    <th class="auto-style2">Student No.</th>
                    <td class="auto-style4"><asp:Label ID="lblStudentNo" runat="server" CssClass="label"></asp:Label></td>
                </tr>
                <tr>
                    <th class="auto-style2">Father's Name</th>
                    <td class="auto-style4"><asp:Label ID="lblFather" runat="server" CssClass="label"></asp:Label></td>
                    <th class="auto-style2">Mother's Name</th>
                    <td class="auto-style4"><asp:Label ID="lblMother" runat="server" CssClass="label"></asp:Label></td>
                </tr>
                <tr>
                    <th class="auto-style2">Mobile Number</th>
                    <td class="auto-style4"><asp:Label ID="lblMobile" runat="server" CssClass="label"></asp:Label></td>
                    <th class="auto-style2">Email ID</th>
                    <td class="auto-style4"><asp:Label ID="lblEmail" runat="server" CssClass="label"></asp:Label></td>
                </tr>
                <tr>
                    <th class="auto-style2">Date of Birth</th>
                    <td class="auto-style4"><asp:Label ID="lblDOB" runat="server" CssClass="label"></asp:Label></td>
                </tr>
                <tr>
                    <th class="auto-style2">Local Address</th>
                    <td class="auto-style4"><asp:Label ID="lblLAddress" runat="server" CssClass="label"></asp:Label></td>
                    <th class="auto-style2">Permanent Address</th>
                    <td class="auto-style4"><asp:Label ID="lblPAddress" runat="server" CssClass="label"></asp:Label></td>
                </tr>
            </tbody>
            </table>
            </center>
        </div>
        <br />
        <div style="margin-top:5%;">
            <h2 style="text-align: center;">Academic Details</h2>
            <table class="table">

                <tbody>
                    <tr>
                        <th class="auto-style2">Course</th>
                        <td class="auto-style4"><asp:Label ID="lblCourse" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style2">10th %</th>
                        <td class="auto-style4"><asp:Label ID="lbl10Percent" runat="server" CssClass="label"></asp:Label></td>
                    </tr>
                    <tr>
                        <th class="auto-style2">Branch</th>
                        <td class="auto-style4"><asp:Label ID="lblBranch" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style2">Year of 10th Passout</th>
                        <td class="auto-style4"><asp:Label ID="lbl10Year" runat="server" CssClass="label"></asp:Label></td>
                    </tr>
                    <tr>
                        <th class="auto-style2">Year</th>
                        <td class="auto-style4"><asp:Label ID="lblYear" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style2">10th Board</th>
                        <td class="auto-style4"><asp:Label ID="lbl10Board" runat="server" CssClass="label"></asp:Label></td>
                    </tr>
                    <tr>
                        <th class="auto-style2">Batch</th>
                        <td class="auto-style4"><asp:Label ID="lblBatch" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style2">12th %</th>
                        <td class="auto-style4"><asp:Label ID="lbl12Percent" runat="server" CssClass="label"></asp:Label></td>
                    </tr>
                    <tr>
                        <th class="auto-style2">No. of total Backlogs</th>
                        <td class="auto-style4"><asp:Label ID="lblBackTotal" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style2">Year of 12th Passout</th>
                        <td class="auto-style4"><asp:Label ID="lbl12Year" runat="server" CssClass="label"></asp:Label></td>
                    </tr>
                    <tr>
                        <th class="auto-style2">Any Live Backlog</th>
                        <td class="auto-style4"><asp:Label ID="lblBackLive" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style2">12th Board</th>
                        <td class="auto-style4"><asp:Label ID="lbl12Board" runat="server" CssClass="label"></asp:Label></td>
                    </tr>
                    <tr>
                        <th class="auto-style2">Live Backlog Subject Code</th>
                        <td class="auto-style4"><asp:Label ID="lblBackCode" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style2">Gap Year</th>
                        <td class="auto-style4"><asp:Label ID="lblGapYear" runat="server" CssClass="label"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div>
            <h2 style="text-align: center;">Year Wise Details</h2>
            <table class="table">

                <tbody>
                    <tr>
                        <th class="auto-style3">1st Year</th>
                        <th class="auto-style3" colspan="4">Semester 1</th>
                        <th class="auto-style3" colspan="3">Semester 2</th>
                    </tr>
                    <tr>
                        <th></th>
                        <th class="auto-style1">Marks Obtained</th>
                        <td class="auto-style2"><asp:Label ID="lblSem1MO" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style1">Total Marks</th>
                        <td class="auto-style2"><asp:Label ID="lblSem1TM" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style1">Marks Obtained</th>
                        <td class="auto-style2"><asp:Label ID="lblSem2MO" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style1">Total Marks</th>
                        <td class="auto-style2"><asp:Label ID="lblSem2TM" runat="server" CssClass="label"></asp:Label></td>
                    </tr>
                    <tr>
                        <th class="auto-style3">2nd Year</th>
                        <th class="auto-style3" colspan="4">Semester 3</th>
                        <th class="auto-style3" colspan="3">Semester 4</th>
                    </tr>
                    <tr>
                        <th></th>
                        <th class="auto-style1">Marks Obtained</th>
                        <td class="auto-style2"><asp:Label ID="lblSem3MO" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style1">Total Marks</th>
                        <td class="auto-style2"><asp:Label ID="lblSem3TM" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style1">Marks Obtained</th>
                        <td class="auto-style2"><asp:Label ID="lblSem4MO" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style1">Total Marks</th>
                        <td class="auto-style2"><asp:Label ID="lblSem4TM" runat="server" CssClass="label"></asp:Label></td>
                    </tr>
                    <tr>
                        <th class="auto-style3">3rd Year</th>
                        <th class="auto-style3" colspan="4">Semester 5</th>
                        <th class="auto-style3" colspan="3">Semester 6</th>
                    </tr>
                    <tr>
                        <th></th>
                        <th class="auto-style1">Marks Obtained</th>
                        <td class="auto-style2"><asp:Label ID="lblSem5MO" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style1">Total Marks</th>
                        <td class="auto-style2"><asp:Label ID="lblSem5TM" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style1">Marks Obtained</th>
                        <td class="auto-style2"><asp:Label ID="lblSem6MO" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style1">Total Marks</th>
                        <td class="auto-style2"><asp:Label ID="lblSem6TM" runat="server" CssClass="label"></asp:Label></td>
                    </tr>
                    <tr>
                        <th class="auto-style3">4th Year</th>
                        <th class="auto-style3" colspan="4">Semester 7</th>
                        <th class="auto-style3" colspan="3">Semester 8</th>
                    </tr>
                    <tr>
                        <th></th>
                        <th class="auto-style1">Marks Obtained</th>
                        <td class="auto-style2"><asp:Label ID="lblSem7MO" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style1">Total Marks</th>
                        <td class="auto-style2"><asp:Label ID="lblSem7TM" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style1">Marks Obtained</th>
                        <td class="auto-style2"><asp:Label ID="lblSem8MO" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style1">Total Marks</th>
                        <td class="auto-style2"><asp:Label ID="lblSem8TM" runat="server" CssClass="label"></asp:Label></td>
                    </tr>

                    <tr>
                        <th class="auto-style3">
                            &nbsp;</th>
                    </tr>
                    <tr>
                        <th class="auto-style1" colspan="2">Total Marks Obtained:</th>
                        <td class="auto-style4"><asp:Label ID="lblTotalMO" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style1">Total Marks:</th>
                        <td class="auto-style4"><asp:Label ID="lblTotalTM" runat="server" CssClass="label"></asp:Label></td>
                        <th class="auto-style1">Aggregate %:</th>
                        <td class="auto-style4"><asp:Label ID="lblAggregate" runat="server" CssClass="label"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <br />
        <center><div>
            <asp:Button ID="btnEditDetails" runat="server" Text="Edit Details" CssClass="btn-success" style="margin-right:5%;" OnClick="btnEditDetails_Click"/>
        </div></center>
        <div class="navbar"></div>
    </form>
</body>
</html>
