<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentRequest.aspx.cs" Inherits="StudentRequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Requests</title>
    <%--Bootstrap CSS--%>
    <link rel="stylesheet" href="assets/bootstrap-3.3.7-dist/css/bootstrap.css" />
    <link rel="stylesheet" href="assets/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" />
    <script src="assets/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="assets/bootstrap-3.3.7-dist/jquery-1.12.4.min.js"></script>
    <script src="assets/bootstrap-3.3.7-dist/bootstrapjs.js"></script>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            display: inline-block;
            padding-left: 20px;
            margin-bottom: 0;
            font-weight: normal;
            vertical-align: middle;
            cursor: pointer;
            left: 0px;
            top: -4px;
        }
        .auto-style2 {
            position: relative;
            display: inline-block;
            padding-left: 20px;
            margin-bottom: 0;
            font-weight: normal;
            vertical-align: middle;
            cursor: pointer;
            left: -3px;
            top: -3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header><span style="float:right;"><asp:Button runat="server" ID="btnLogout" Text="Log Out" BackColor="Red" OnClick="btnLogout_Click" /></span></header>
            <h2 style="text-align: center;">Request Changes</h2>
            <br />
            <hr />
            <br />
            <div>
                <div class="row">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-2"><h4>Roll No.</h4></div>
                    <div class="col-sm-3"><asp:TextBox ID="txtRollNo" runat="server" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-sm-3"></div>
                </div>
                <br />
                <br />
                <div>
                    <%--<button type="button" class="btn btn-warning btn-block" data-toggle="collapse" data-target="#demo" style="color: black; font-size: larger; width: 50%; margin-left: 25%;">Academic Details Changes</button><br />
                <div id="demo" class="collapse">--%>
                    <h3 style="text-align:center;">Academic Details</h3>
                    <div class="col-md-6">
                        <br />
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-3"><asp:CheckBox ID="CheckBox1" runat="server" Text="Course" CssClass="checkbox-inline" OnCheckedChanged="CheckBox1_CheckedChanged" /></div>
                            <div class="col-md-3"><asp:TextBox ID="txtCourseOld" runat="server" CssClass="form-control" placeholder="Old Value" Enabled="false"></asp:TextBox></div>
                            <div class="col-md-3"><asp:TextBox ID="txtCourseNew" runat="server" CssClass="form-control" placeholder="New Value" Enabled="false"></asp:TextBox></div>
                            <div class="col-md-1"></div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-3"><asp:CheckBox ID="CheckBox2" runat="server" Text="Branch" CssClass="checkbox-inline" OnCheckedChanged="CheckBox2_CheckedChanged" /></div>
                            <div class="col-md-3"><asp:TextBox ID="txtBranchOld" runat="server" CssClass="form-control" placeholder="Old Value" Enabled="false"></asp:TextBox></div>
                            <div class="col-md-3"><asp:TextBox ID="txtBranchNew" runat="server" CssClass="form-control" placeholder="New Value" Enabled="false"></asp:TextBox></div>
                            <div class="col-md-1"></div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-3"><asp:CheckBox ID="CheckBox3" runat="server" Text="Batch" CssClass="checkbox-inline" OnCheckedChanged="CheckBox3_CheckedChanged" /></div>
                            <div class="col-md-3"><asp:TextBox ID="txtBatchOld" runat="server" CssClass="form-control" placeholder="Old Value" Enabled="false"></asp:TextBox></div>
                            <div class="col-md-3"><asp:TextBox ID="txtBatchNew" runat="server" CssClass="form-control" placeholder="New Value" Enabled="false"></asp:TextBox></div>
                            <div class="col-md-1"></div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-3"<asp:CheckBox ID="CheckBox4" runat="server" Text="Year" CssClass="checkbox-inline" OnCheckedChanged="CheckBox4_CheckedChanged" /></div>
                            <div class="col-md-3"><asp:TextBox ID="txtYearOld" runat="server" CssClass="form-control" placeholder="Old Value" Enabled="false"></asp:TextBox></div>
                            <div class="col-md-3"><asp:TextBox ID="txtYearNew" runat="server" CssClass="form-control" placeholder="New Value" Enabled="false"></asp:TextBox></div>
                            <div class="col-md-1"></div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-3"><asp:CheckBox ID="CheckBox5" runat="server" Text="Total Backlog" CssClass="checkbox-inline" OnCheckedChanged="CheckBox5_CheckedChanged" /></div>
                            <div class="col-md-3"><asp:TextBox ID="txtBackTotalOld" runat="server" CssClass="form-control" placeholder="Old Value" Enabled="false"></asp:TextBox></div>
                            <div class="col-md-3"><asp:TextBox ID="txtBackTotalNew" runat="server" CssClass="form-control" placeholder="New Value" Enabled="false"></asp:TextBox></div>
                            <div class="col-md-1"></div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-3"><asp:CheckBox ID="CheckBox6" runat="server" Text="Live Backlog" CssClass="auto-style1" OnCheckedChanged="CheckBox6_CheckedChanged" /></div>
                            <div class="col-md-3"><asp:TextBox ID="txtBackLiveOld" runat="server" CssClass="form-control" placeholder="Old Value" Enabled="false"></asp:TextBox></div>
                            <div class="col-md-3"><asp:TextBox ID="txtBackLiveNew" runat="server" CssClass="form-control" placeholder="New Value" Enabled="false"></asp:TextBox></div>
                            <div class="col-md-1"></div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-3"><asp:CheckBox ID="CheckBox7" runat="server" Text="Live Backlog Subject" CssClass="auto-style2" OnCheckedChanged="CheckBox7_CheckedChanged" /></div>
                            <div class="col-md-3"><asp:TextBox ID="txtBackLiveSubOld" runat="server" CssClass="form-control" placeholder="Old Value" Enabled="false"></asp:TextBox></div>
                            <div class="col-md-3"><asp:TextBox ID="txtBackLiveSubNew" runat="server" CssClass="form-control" placeholder="New Value" Enabled="false"></asp:TextBox></div>
                            <div class="col-md-1"></div>
                        </div>
                        <br />
                    </div>
                    <div class="col-md-6">
                        <br />
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-3">
                                <asp:CheckBox ID="CheckBox8" runat="server" Text="10th %" CssClass="checkbox-inline" /></div>
                            <div class="col-md-3">
                                <asp:TextBox ID="TextBox17" runat="server" CssClass="form-control" placeholder="Old Value"></asp:TextBox></div>
                            <div class="col-md-3">
                                <asp:TextBox ID="TextBox18" runat="server" CssClass="form-control" placeholder="New Value"></asp:TextBox></div>
                            <div class="col-md-2"></div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-3">
                                <asp:CheckBox ID="CheckBox9" runat="server" Text="10th Pass Year" CssClass="checkbox-inline" /></div>
                            <div class="col-md-3">
                                <asp:TextBox ID="TextBox19" runat="server" CssClass="form-control" placeholder="Old Value"></asp:TextBox></div>
                            <div class="col-md-3">
                                <asp:TextBox ID="TextBox20" runat="server" CssClass="form-control" placeholder="New Value"></asp:TextBox></div>
                            <div class="col-md-2"></div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-3">
                                <asp:CheckBox ID="CheckBox10" runat="server" Text="10th Board" CssClass="checkbox-inline" /></div>
                            <div class="col-md-3">
                                <asp:TextBox ID="TextBox21" runat="server" CssClass="form-control" placeholder="Old Value"></asp:TextBox></div>
                            <div class="col-md-3">
                                <asp:TextBox ID="TextBox22" runat="server" CssClass="form-control" placeholder="New Value"></asp:TextBox></div>
                            <div class="col-md-2"></div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-3">
                                <asp:CheckBox ID="CheckBox11" runat="server" Text="12th %" CssClass="checkbox-inline" /></div>
                            <div class="col-md-3">
                                <asp:TextBox ID="TextBox23" runat="server" CssClass="form-control" placeholder="Old Value"></asp:TextBox></div>
                            <div class="col-md-3">
                                <asp:TextBox ID="TextBox24" runat="server" CssClass="form-control" placeholder="New Value"></asp:TextBox></div>
                            <div class="col-md-2"></div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-3">
                                <asp:CheckBox ID="CheckBox12" runat="server" Text="12th Pass Year" CssClass="checkbox-inline" /></div>
                            <div class="col-md-3">
                                <asp:TextBox ID="TextBox25" runat="server" CssClass="form-control" placeholder="Old Value"></asp:TextBox></div>
                            <div class="col-md-3">
                                <asp:TextBox ID="TextBox26" runat="server" CssClass="form-control" placeholder="New Value"></asp:TextBox></div>
                            <div class="col-md-2"></div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-3">
                                <asp:CheckBox ID="CheckBox13" runat="server" Text="12th Board" CssClass="checkbox-inline" /></div>
                            <div class="col-md-3">
                                <asp:TextBox ID="TextBox27" runat="server" CssClass="form-control" placeholder="Old Value"></asp:TextBox></div>
                            <div class="col-md-3">
                                <asp:TextBox ID="TextBox28" runat="server" CssClass="form-control" placeholder="New Value"></asp:TextBox></div>
                            <div class="col-md-2"></div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-3"><asp:CheckBox ID="CheckBox14" runat="server" Text="Gap Year" CssClass="checkbox-inline" /></div>
                            <div class="col-md-3"><asp:TextBox ID="TextBox29" runat="server" CssClass="form-control" placeholder="Old Value"></asp:TextBox></div>
                            <div class="col-md-3"><asp:TextBox ID="TextBox30" runat="server" CssClass="form-control" placeholder="New Value"></asp:TextBox></div>
                            <div class="col-md-2"></div>
                        </div>
                        <br />
                    </div>
                
                <br />
                <h3 style="text-align:center;">Year Wise Details</h3>
                <div class="row">
                    <div class="col-md-6">
                        <div class="col-md-2"></div>
                        <div class="col-md-3"><asp:CheckBox ID="CheckBox15" runat="server" Text="Sem 1" CssClass="checkbox-inline" /></div>
                        <div class="col-md-3"><asp:TextBox ID="TextBox31" runat="server" CssClass="form-control" placeholder="Old Marks"></asp:TextBox></div>
                        <div class="col-md-3"><asp:TextBox ID="TextBox32" runat="server" CssClass="form-control" placeholder="New Marks"></asp:TextBox></div>
                        <div class="col-md-1"></div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-1"></div>
                        <div class="col-md-3"><asp:CheckBox ID="CheckBox16" runat="server" Text="Sem 2" CssClass="checkbox-inline" /></div>
                        <div class="col-md-3"><asp:TextBox ID="TextBox33" runat="server" CssClass="form-control" placeholder="Old Marks"></asp:TextBox></div>
                        <div class="col-md-3"><asp:TextBox ID="TextBox34" runat="server" CssClass="form-control" placeholder="New Marks"></asp:TextBox></div>
                        <div class="col-md-2"></div>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-md-6">
                        <div class="col-md-2"></div>
                        <div class="col-md-3"><asp:CheckBox ID="CheckBox17" runat="server" Text="Sem 3" CssClass="checkbox-inline" /></div>
                        <div class="col-md-3"><asp:TextBox ID="TextBox35" runat="server" CssClass="form-control" placeholder="Old Marks"></asp:TextBox></div>
                        <div class="col-md-3"><asp:TextBox ID="TextBox36" runat="server" CssClass="form-control" placeholder="New Marks"></asp:TextBox></div>
                        <div class="col-md-1"></div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-1"></div>
                        <div class="col-md-3"><asp:CheckBox ID="CheckBox18" runat="server" Text="Sem 4" CssClass="checkbox-inline" /></div>
                        <div class="col-md-3"><asp:TextBox ID="TextBox37" runat="server" CssClass="form-control" placeholder="Old Marks"></asp:TextBox></div>
                        <div class="col-md-3"><asp:TextBox ID="TextBox38" runat="server" CssClass="form-control" placeholder="New Marks"></asp:TextBox></div>
                        <div class="col-md-2"></div>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-md-6">
                        <div class="col-md-2"></div>
                        <div class="col-md-3"><asp:CheckBox ID="CheckBox19" runat="server" Text="Sem 5" CssClass="checkbox-inline" /></div>
                        <div class="col-md-3"><asp:TextBox ID="TextBox39" runat="server" CssClass="form-control" placeholder="Old Marks"></asp:TextBox></div>
                        <div class="col-md-3"><asp:TextBox ID="TextBox40" runat="server" CssClass="form-control" placeholder="New Marks"></asp:TextBox></div>
                        <div class="col-md-1"></div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-1"></div>
                        <div class="col-md-3"><asp:CheckBox ID="CheckBox20" runat="server" Text="Sem 6" CssClass="checkbox-inline" /></div>
                        <div class="col-md-3"><asp:TextBox ID="TextBox41" runat="server" CssClass="form-control" placeholder="Old Marks"></asp:TextBox></div>
                        <div class="col-md-3"><asp:TextBox ID="TextBox42" runat="server" CssClass="form-control" placeholder="New Marks"></asp:TextBox></div>
                        <div class="col-md-2"></div>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-md-6">
                        <div class="col-md-2"></div>
                        <div class="col-md-3"><asp:CheckBox ID="CheckBox21" runat="server" Text="Sem 7" CssClass="checkbox-inline" /></div>
                        <div class="col-md-3"><asp:TextBox ID="TextBox43" runat="server" CssClass="form-control" placeholder="Old Marks"></asp:TextBox></div>
                        <div class="col-md-3"><asp:TextBox ID="TextBox44" runat="server" CssClass="form-control" placeholder="New Marks"></asp:TextBox></div>
                        <div class="col-md-1"></div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-1"></div>
                        <div class="col-md-3"><asp:CheckBox ID="CheckBox22" runat="server" Text="Sem 8" CssClass="checkbox-inline" /></div>
                        <div class="col-md-3"><asp:TextBox ID="TextBox45" runat="server" CssClass="form-control" placeholder="Old Marks"></asp:TextBox></div>
                        <div class="col-md-3"><asp:TextBox ID="TextBox46" runat="server" CssClass="form-control" placeholder="New Marks"></asp:TextBox></div>
                        <div class="col-md-2"></div>
                    </div>
                    </div><br />
                    <center><asp:Button ID="btnUpdate" runat="server" Text="Submit" CssClass="btn-success" OnClick="btnUpdate_Click"/></center>
                </div>
                    <br />
                </div>
                <br />

                <%--Change Password--%>
                <div>
                    <button type="button" class="btn btn-warning btn-block" data-toggle="collapse" data-target="#password" style="color: black; font-size: larger; width: 50%; margin-left: 25%;">Change Password</button><br />
                    <div id="password" class="collapse">
                        <br />
                        <div class="row">
                            <div class="col-sm-2"></div>
                            <div class="col-sm-4"><h4>Old Password</h4></div>
                            <div class="col-sm-4"><asp:TextBox ID="txtPassOld" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox></div>
                            <div class="col-sm-2"></div>
                        </div><br />
                        <div class="row">
                            <div class="col-sm-2"></div>
                            <div class="col-sm-4"><h4>New Password</h4></div>
                            <div class="col-sm-4"><asp:TextBox ID="txtPassNew" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox></div>
                            <div class="col-sm-2"></div>
                        </div><br />
                        <div class="row">
                            <div class="col-sm-2"></div>
                            <div class="col-sm-4"><h4>Confirm New Password</h4></div>
                            <div class="col-sm-4">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassNew" ControlToValidate="txtPassNewRe" ErrorMessage="Password Do Not Match" ForeColor="Red"></asp:CompareValidator>
                                <asp:TextBox ID="txtPassNewRe" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox></div>
                            <div class="col-sm-2"></div>
                        </div><br />
                        <center><asp:Button ID="btnChangePass" runat="server" Text="Change Password" CssClass="btn-success" OnClick="btnChangePass_Click"/></center>
                        <br />
                    </div>
                </div>
                <br />
            </div>
        </div>
    </form>
</body>
</html>
