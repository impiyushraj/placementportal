<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminStudentDetailsEdit.aspx.cs" Inherits="AdminStudentDetailsEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:80%; margin-left:10%;">
        <div class="header"><h3 style="text-align:center">Edit Student Details</h3></div>    
        <div>
            <hr />
            <header>Welcome&nbsp<asp:Label ID="lblWelcome" runat="server" ForeColor="Red"></asp:Label><span style="float:right;"><asp:Button ID="btnLogOut" runat="server" Text="Log Out" BackColor="Red" OnClick="btnLogOut_Click"></asp:Button></span></header><br /><hr />
            <h4 style="text-align:center">Student Roll No.</h4><center><asp:TextBox runat="server" ID="txtRollNo" CssClass="form-control" MaxLength="10" Width="30%"></asp:TextBox></center><br />
            <h2 style="text-align:center;">Academic Details</h2>
            <table class="table">
                <tbody>
                <tr>
                    <th class="auto-style1">Course</th>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlCourse" runat="server">
                            <asp:ListItem Value="B.Tech">B.Tech & B.Tech Lateral</asp:ListItem>
                            <asp:ListItem Value="M.Tech">M.Tech</asp:ListItem>
                            <asp:ListItem Value="MCA">MCA</asp:ListItem>
                            <asp:ListItem Value="MBA">MBA</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <th class="auto-style2">10th % or CGPA</th>
                    <td class="auto-style4"><asp:TextBox ID="txt10Percent" runat="server" CssClass="form-control" MaxLength="5"></asp:TextBox></td>
                </tr>
                <tr>
                    <th class="auto-style1">Branch</th>
                    <td class="auto-style6">
                        <asp:DropDownList ID="ddlBranch" runat="server">
                            <asp:ListItem Value="Civil">Civil (CE)</asp:ListItem>
                            <asp:ListItem Value="Computer Science (CSE)">Computer Science (CSE)</asp:ListItem>
                            <asp:ListItem Value="Electronics & Communication (ECE)">Electronics &amp; Communication (ECE)</asp:ListItem>
                            <asp:ListItem Value="Electrical & Electronics (EN)">Electrical &amp; Electronics (EN)</asp:ListItem>
                            <asp:ListItem Value="Electronics & Instrumentation (EI)">Electronics &amp; Instrumentation (EI)</asp:ListItem>
                            <asp:ListItem Value="Information Technology">Information Technology (IT)</asp:ListItem>
                            <asp:ListItem Value="Mechanical (ME)">Mechanical (ME)</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <th class="auto-style5">Year of Passout</th>
                    <td class="auto-style6"><asp:TextBox ID="txt10Year" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <th class="auto-style1">Year</th>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlYear" runat="server">
                            <asp:ListItem Value="I">I</asp:ListItem>
                            <asp:ListItem Value="II">II</asp:ListItem>
                            <asp:ListItem Value="III">III</asp:ListItem>
                            <asp:ListItem Value="IV">IV</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <th class="auto-style2">10th Board</th>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddl10Board" runat="server">
                            <asp:ListItem Value="ICSE">ICSE</asp:ListItem>
                            <asp:ListItem Value="CBSE">CBSE</asp:ListItem>
                            <asp:ListItem Value="Other">Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">Addmission Year (Batch)</th>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlAddYear" runat="server">
                            <asp:ListItem Value="1999">1999</asp:ListItem>
                            <asp:ListItem Value="2000">2000</asp:ListItem>
                            <asp:ListItem Value="2001">2001</asp:ListItem>
                            <asp:ListItem Value="2002">2002</asp:ListItem>
                            <asp:ListItem Value="2003">2003</asp:ListItem>
                            <asp:ListItem Value="2004">2004</asp:ListItem>
                            <asp:ListItem Value="2005">2005</asp:ListItem>
                            <asp:ListItem Value="2006">2006</asp:ListItem>
                            <asp:ListItem Value="2007">2007</asp:ListItem>
                            <asp:ListItem Value="2008">2008</asp:ListItem>
                            <asp:ListItem Value="2009">2009</asp:ListItem>
                            <asp:ListItem Value="2010">2010</asp:ListItem>
                            <asp:ListItem Value="2011">2011</asp:ListItem>
                            <asp:ListItem Value="2012">2012</asp:ListItem>
                            <asp:ListItem Value="2013">2013</asp:ListItem>
                            <asp:ListItem Value="2014">2014</asp:ListItem>
                            <asp:ListItem Value="2015">2015</asp:ListItem>
                            <asp:ListItem Value="2016">2016</asp:ListItem>
                            <asp:ListItem Value="2017">2017</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <th class="auto-style2">12th %</th>
                    <td class="auto-style4"><asp:TextBox ID="txt12Percent" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <th class="auto-style1">No. of total Backlogs</th>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlBackTotal" runat="server">
                            <asp:ListItem Selected="True">0</asp:ListItem>
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                            <asp:ListItem Value="6">6</asp:ListItem>
                            <asp:ListItem Value="7">7</asp:ListItem>
                            <asp:ListItem Value="8">8</asp:ListItem>
                            <asp:ListItem Value="9">9</asp:ListItem>
                            <asp:ListItem Value="10">10</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <th class="auto-style2">Year of Passout</th>
                    <td class="auto-style4"><asp:TextBox ID="txt12Year" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <th class="auto-style1">Any Live Backlog</th>
                    <td class="auto-style4">
                        <asp:RadioButtonList ID="rbBackLive" runat="server" RepeatDirection="Horizontal" Width="140px">
                            <asp:ListItem Value="No">No</asp:ListItem>
                            <asp:ListItem Value="Yes">Yes</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <th class="auto-style2">12th Board</th>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddl12Board" runat="server">
                            <asp:ListItem>ISC</asp:ListItem>
                            <asp:ListItem>CBSE</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">Live Backlog Subject Code<br />(Separate multiple subjects by semicolon ; )</th>
                    <td class="auto-style4"><asp:TextBox ID="txtBackLiveCode" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <th class="auto-style2">Gap Year</th>
                    <td class="auto-style4">
                       <asp:DropDownList ID="ddlGapYear" runat="server">
                           <asp:ListItem Value="No" Selected="True">No</asp:ListItem>
                           <asp:ListItem Value="1">1</asp:ListItem>
                           <asp:ListItem Value="1">2</asp:ListItem>
                           <asp:ListItem Value="3">3</asp:ListItem>
                       </asp:DropDownList>
                   </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div>
            <h2 style="text-align:center;">Year Wise Details</h2>
            <table class="table">
                <tbody>
                    <tr>
                        <th class="auto-style3">1st Year</th>
                        <th class="auto-style3" colspan="2">Semester 1</th>
                        <th class="auto-style3" colspan="2">Semester 2</th>
                    </tr>
                    <tr>
                        <td></td>
                        <td><asp:TextBox ID="txtSem1Obtain" runat="server" CssClass="form-control" placeholder="Marks Obtained" Width="150px"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtSem1Total" runat="server" CssClass="form-control" placeholder="Total Marks" Width="150px"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtSem2Obtain" runat="server" CssClass="form-control" placeholder="Marks Obtained" Width="150px"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtSem2Total" runat="server" CssClass="form-control" placeholder="Total Marks" Width="150px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <th class="auto-style3">2nd Year</th>
                        <th class="auto-style3" colspan="2">Semester 3</th>
                        <th class="auto-style3" colspan="2">Semester 4</th>
                    </tr>
                    <tr>
                        <td></td>
                        <td><asp:TextBox ID="txtSem3Obtain" runat="server" CssClass="form-control" placeholder="Marks Obtained" Width="150px"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtSem3Total" runat="server" CssClass="form-control" placeholder="Total Marks" Width="150px"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtSem4Obtain" runat="server" CssClass="form-control" placeholder="Marks Obtained" Width="150px"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtSem4Total" runat="server" CssClass="form-control" placeholder="Total Marks" Width="150px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <th class="auto-style3">3rd Year</th>
                        <th class="auto-style3" colspan="2">Semester 5</th>
                        <th class="auto-style3" colspan="2">Semester 6</th>
                    </tr>
                    <tr>
                        <td></td>
                        <td><asp:TextBox ID="txtSem5Obtain" runat="server" CssClass="form-control" placeholder="Marks Obtained" Width="150px"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtSem5Total" runat="server" CssClass="form-control" placeholder="Total Marks" Width="150px"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtSem6Obtain" runat="server" CssClass="form-control" placeholder="Marks Obtained" Width="150px"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtSem6Total" runat="server" CssClass="form-control" placeholder="Total Marks" Width="150px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <th class="auto-style3">4th Year</th>
                        <th class="auto-style3" colspan="2">Semester 7</th>
                        <th class="auto-style3" colspan="2">Semester 8</th>
                    </tr>
                    <tr>
                        <td></td>
                        <td><asp:TextBox ID="txtSem7Obtain" runat="server" CssClass="form-control" placeholder="Marks Obtained" Width="150px"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtSem7Total" runat="server" CssClass="form-control" placeholder="Total Marks" Width="150px"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtSem8Obtain" runat="server" CssClass="form-control" placeholder="Marks Obtained" Width="150px"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtSem8Total" runat="server" CssClass="form-control" placeholder="Total Marks" Width="150px"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <th class="auto-style3"><asp:Button ID="btnAggregate" runat="server" Text="Calculate Aggregate %" CssClass="btn-info" OnClick="btnAggregate_Click" /></th>
                    </tr>
                    <tr>
                        <th class="auto-style3" colspan="2">Total Marks Obtained: <asp:Label ID="lblTotalMO" ForeColor="orange" runat="server"></asp:Label></th>
                        <th class="auto-style3">Total Marks: <asp:Label ID="lblTotalTM" ForeColor="orange" runat="server"></asp:Label></th>
                        <th class="auto-style3">Aggregate %: <asp:Label ID="lblAggregate" ForeColor="orange" runat="server"></asp:Label></th>
                    </tr>
                </tbody>
            </table>
            <p style="font-size:20px;"><asp:Label ID="lblTest" runat="server" ForeColor="Red" CssClass="label"></asp:Label></p>
    </div>

        <center><div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn-success btn-lg" style="margin-right:5%;" OnClick="btnSubmit_Click"/>
            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn-danger btn-lg" style="margin-left:5%;"/>
        </div></center>
        <br /><hr />
    </div>
</asp:Content>

