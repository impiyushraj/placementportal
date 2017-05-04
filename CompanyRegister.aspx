<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CompanyRegister.aspx.cs" Inherits="CompanyRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Company Registration</title>

    <%--Bootstrap CSS--%>
    <link rel="stylesheet" href="assets/bootstrap-3.3.7-dist/css/bootstrap.css" />
    <link rel="stylesheet" href="assets/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css"/>
    <script src="assets/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="assets/bootstrap-3.3.7-dist/jquery-1.12.4.min.js"></script>
    <script src="assets/bootstrap-3.3.7-dist/bootstrapjs.js"></script>

    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>

    <style>
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

        h2 {
            color: darkblue;
            text-align: center;
            text-transform: uppercase;
        }

        h4 {
            color: dodgerblue;
            text-align: center;
        }

        .input-group-addon {
            border-left-width: 0;
            border-right-width: 0;
        }

            .input-group-addon:first-child {
                border-left-width: 1px;
            }

            .input-group-addon:last-child {
                border-right-width: 1px;
            }
    </style>
</head>
<!--<body style="background-image: url('blur5.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed;">-->
<body>
    <br />
    <nav class="nav" style="width:80%;"><span style="float:right;"><h3><a href="Default.aspx" style="text-decoration:none;">Go To Homepage</a></h3></span></nav>
    <div style="border-left: 5px solid black; border-right: 5px solid black; margin: 5% 15% 5% 15%;">
        <br />
        <h2>Company Registration</h2>
        <br />
        <div style="width: 90%; margin-left: 5%; background-color: transparent;">
            <form class="go-bottom" id="form1" runat="server">

                <!--Company Registration-->
                <div class="row">
                    <div class="col-lg-5">
                        <h4>About Organization</h4>
                        <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control" placeholder="Name of Organization"></asp:TextBox><br />
                        <asp:TextBox ID="txtCompanyWebsite" runat="server" CssClass="form-control" placeholder="Website"></asp:TextBox><br />
                        <asp:TextBox ID="txtCompanyAddress" runat="server" CssClass="form-control" placeholder="Postal Address"></asp:TextBox><br />
                        <asp:TextBox ID="txtCompanySector" runat="server" CssClass="form-control" placeholder="Industry Sector"></asp:TextBox><br />
                        <br />
                        <label>Type of Organization</label><br />
                        <asp:RadioButtonList ID="rbCompanyType" runat="server" RepeatDirection="Horizontal" Width="70%">
                            <asp:ListItem Value="Private">Private</asp:ListItem>
                            <asp:ListItem Value="Public">Public/Govt.</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="col-lg-2"></div>
                    <div class="col-lg-5">
                        <h4>HR Contact Details</h4>
                        <asp:TextBox ID="txtHRName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox><br />
                        <asp:TextBox ID="txtHREmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox><br />
                        <asp:TextBox ID="txtHRMobile" runat="server" CssClass="form-control" placeholder="Mobile" MaxLength="10"></asp:TextBox><br />
                        <asp:TextBox ID="txtHRLandline" runat="server" CssClass="form-control" placeholder="Landline with STD Code" MaxLength="13"></asp:TextBox><br />
                    </div>
                    <br />
                </div>
                <br />
                <hr />
                <br />

                <!--Job Announcement Details-->
                <h2>Job Announcement</h2>
                <br />
                <div>
                    <h4 style="text-align: center;">Upload Job Announcement PDF/DOC</h4>
                    <br />
                    <center>
                        <div>
                            <img src="assets/images/file_upload.png" width="40" height="40"/><br /><br />
                            <span><asp:FileUpload ID="fuJobForm" runat="server"/></span><br />
                        </div><br />
                        <asp:Button ID="btnJobFormUpload" runat="server" CssClass="btn btn-block btn-primary" Text="Upload" Width="50%" OnClick="btnJobFormUpload_Click"/><br />
                    </center>
                </div>
                <h2>OR</h2>
                <br />
                <button type="button" class="btn btn-warning btn-block" data-toggle="collapse" data-target="#demo" style="color:black; font-size:larger; width:50%; margin-left:25%;">Fill the Form</button><br />
                <div id="demo" class="collapse">
                    <br />
                    <div>
                        <br />
                        <h4 style="text-align: center">Job Profile</h4>
                        <br />
                        <center>
                        <div style="width: 65%;">
                            <asp:TextBox ID="txtJobDsg" runat="server" CssClass="form-control" placeholder="Job Designation"></asp:TextBox><br />
                            <asp:TextBox ID="txtJobDsc" runat="server" CssClass="form-control" placeholder="Job Description" TextMode="MultiLine" Rows="8"></asp:TextBox><br />
                            <asp:TextBox ID="txtJobLoc" runat="server" CssClass="form-control" placeholder="Job Posting Location"></asp:TextBox><br />
                            <asp:TextBox ID="txtJobOfferNo" runat="server" CssClass="form-control" placeholder="Total No. of Offers/Vacancies"></asp:TextBox><br />
                        </div>
                    </center>
                        <br />
                        <div class="row">
                            <div class="col-lg-5">
                                <h4>Job Opening for</h4>
                                <br />
                                <asp:CheckBoxList ID="cbJobOpenForCourse" runat="server" Font-Size="Large" RepeatDirection="Horizontal" Width="350px">
                                    <asp:ListItem>B.Tech</asp:ListItem>
                                    <asp:ListItem>M.Tech</asp:ListItem>
                                    <asp:ListItem>MCA</asp:ListItem>
                                    <asp:ListItem>MBA</asp:ListItem>
                                </asp:CheckBoxList>
                                <asp:CheckBoxList ID="cbJobOpenForBTech" runat="server">
                                    <asp:ListItem>Civil (CE)</asp:ListItem>
                                    <asp:ListItem>Computer Science (CSE)</asp:ListItem>
                                    <asp:ListItem>Electronics & Communication (ECE)</asp:ListItem>
                                    <asp:ListItem>Electrical & Electronics (EN)</asp:ListItem>
                                    <asp:ListItem>Electronics & Instrumentation (EI)</asp:ListItem>
                                    <asp:ListItem>Information Technology (IT)</asp:ListItem>
                                    <asp:ListItem>Mechanical (ME)</asp:ListItem>
                                </asp:CheckBoxList>
                                <asp:CheckBoxList ID="cbJobOpenForMTech" runat="server">
                                    <asp:ListItem>Computer Science Engineering</asp:ListItem>
                                    <asp:ListItem>Electronics & Communication Engineering</asp:ListItem>
                                    <asp:ListItem>Mechanical Engineering</asp:ListItem>
                                    <asp:ListItem>Automation & Robotics</asp:ListItem>
                                    <asp:ListItem>Electric Power & Energy System</asp:ListItem>
                                    <asp:ListItem>VLSI Design</asp:ListItem>
                                </asp:CheckBoxList>
                                <asp:CheckBox ID="cbJobOpenForAll" runat="server" Text="For All" />
                            </div>
                            <div class="col-lg-2"></div>
                            <div class="col-lg-5">
                                <h4>Salary Details</h4>
                                <br />
                                <asp:TextBox ID="txtJobCTC" runat="server" CssClass="form-control" placeholder="Cost to Company (CTC) in ₹ LacsPA"></asp:TextBox><br />
                                <asp:TextBox ID="txtJobBonus" runat="server" CssClass="form-control" placeholder="Bonus/Perks/Allowance" TextMode="MultiLine" Rows="3"></asp:TextBox><br />
                                <asp:TextBox ID="txtJobBond" runat="server" CssClass="form-control" placeholder="Bond/Contract"></asp:TextBox><br />
                            </div>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="row">
                        <div class="col-lg-5">
                            <h4>Selection Process</h4>
                            <br />
                            <label>Preference</label>
                            <asp:RadioButtonList ID="rbSelectionPref" runat="server">
                                <asp:ListItem Value="On-Campus">On-Campus Hiring</asp:ListItem>
                                <asp:ListItem Value="Off-Campus">Off-Campus Hiring</asp:ListItem>
                                <asp:ListItem Value="Pool">Pool</asp:ListItem>
                                <asp:ListItem Value="External Exam">External Exam</asp:ListItem>
                                <asp:ListItem>Both</asp:ListItem>
                            </asp:RadioButtonList>
                            <label>Mode of Selection</label>
                            <asp:CheckBoxList ID="cbSelectionMode" runat="server">
                                <asp:ListItem>Pre-Placement Talk (PPT)</asp:ListItem>
                                <asp:ListItem>Resume Shortlisting</asp:ListItem>
                                <asp:ListItem>Online Test</asp:ListItem>
                                <asp:ListItem>Written Test (Aptitude,Technical)</asp:ListItem>
                                <asp:ListItem>Group Discussion</asp:ListItem>
                                <asp:ListItem>Personl Interview</asp:ListItem>
                            </asp:CheckBoxList>
                            <br />

                            <h4>Eligibility Criteria (Percent Range)</h4>
                            <div class="input-group">
                                <span class="input-group-addon">Between</span>
                                <asp:TextBox ID="txtEligileMin" runat="server" CssClass="form-control" placeholder="Min %" MaxLength="4"></asp:TextBox>
                                <span class="input-group-addon" style="border-left: 0; border-right: 0;">and</span>
                                <asp:TextBox ID="txtEligibleMax" runat="server" CssClass="form-control" placeholder="Max %" MaxLength="4"></asp:TextBox>
                            </div><br />
                        </div>
                        <div class="col-lg-2"></div>
                        <div class="col-lg-5">
                            <h4>Requirements for On-Campus Hiring</h4>
                            <br />
                            <asp:TextBox ID="txtMemberNo" runat="server" CssClass="form-control" placeholder="No. of Members Visiting"></asp:TextBox><br />
                            <asp:TextBox ID="txtRoomNo" runat="server" CssClass="form-control" placeholder="No. of Rooms Required"></asp:TextBox><br />
                            <asp:TextBox ID="txtOtherRequire" runat="server" CssClass="form-control" placeholder="Other Requirements"></asp:TextBox><br />
                            <br />
                            <h4>Other Details</h4>
                            <br />
                            <asp:TextBox ID="txtRoundNo" runat="server" CssClass="form-control" placeholder="No. of Rounds"></asp:TextBox><br />
                            <asp:TextBox ID="txtVisitPeriod" runat="server" CssClass="form-control" placeholder="Period of Visit"></asp:TextBox><br />
                        </div>
                    </div>
                    <center>
                    <h4>Other Details/Remarks</h4><br />
                    <div style="width: 65%;">
                        <asp:TextBox ID="txtOtherDetails" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                    </div><br /><br /><br />
                    <div><asp:Button ID="btnSubmit" CssClass="btn btn-primary btn-block" runat="server" Text="Submit" style="font-size:larger; width:50%;" OnClick="btnSubmit_Click" /></div><br />
                </center>
                </div>
            </form>
            <br />
            <div class="footer"></div>
        </div>

    </div>

</body>
</html>
