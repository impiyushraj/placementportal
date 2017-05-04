<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentAcademicEdit.aspx.cs" Inherits="StudentAcademicEdit" %>

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
        <header style="margin-left:5%;"> Welcome <strong><asp:Label ID="lblWelcome" runat="server" ForeColor="Red"></asp:Label></strong><span style="float:right; margin-right:5%;"><asp:Button runat="server" ID="btnLogout" Text="Log Out" BackColor="Red" OnClick="btnLogout_Click" /></span></header>
        <h2 style="text-align:center;">Upload Academic Documents</h2><br />
        <center>
            <button type="button" class="btn btn-warning btn-block" data-toggle="collapse" data-target="#demo1" style="color: black; font-size: larger; width: 30%;">Upload Class X Marksheet</button><br />
            <div id="demo1" class="collapse"><asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload><br /></div><br />
            <button type="button" class="btn btn-warning btn-block" data-toggle="collapse" data-target="#demo2" style="color: black; font-size: larger; width: 30%;">Upload Class XII Marksheet</button><br />
            <div id="demo2" class="collapse"><asp:FileUpload ID="FileUpload7" runat="server"></asp:FileUpload><br /></div><br />
            <button type="button" class="btn btn-warning btn-block" data-toggle="collapse" data-target="#demo3" style="color: black; font-size: larger; width: 30%;">Upload Graduation Year I Marksheet</button><br />
            <div id="demo3" class="collapse"><asp:FileUpload ID="FileUpload8" runat="server"></asp:FileUpload><br /></div><br />
            <button type="button" class="btn btn-warning btn-block" data-toggle="collapse" data-target="#demo4" style="color: black; font-size: larger; width: 30%;">Upload Graduation Year II Marksheet</button><br />
            <div id="demo4" class="collapse"><asp:FileUpload ID="FileUpload9" runat="server"></asp:FileUpload><br /></div><br />
            <button type="button" class="btn btn-warning btn-block" data-toggle="collapse" data-target="#demo5" style="color: black; font-size: larger; width: 30%;">Upload Graduation Year III Marksheet</button><br />
            <div id="demo5" class="collapse"><asp:FileUpload ID="FileUpload10" runat="server"></asp:FileUpload><br /></div><br />
            <button type="button" class="btn btn-warning btn-block" data-toggle="collapse" data-target="#demo6" style="color: black; font-size: larger; width: 30%;">Upload Graduation Year IV Marksheet</button><br />
            <div id="demo6" class="collapse"><asp:FileUpload ID="FileUpload11" runat="server"></asp:FileUpload><br /></div><br /><br />
            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn-block btn-primary" Width="15%" Height="50px"></asp:Button>
        </center>
    </div>
    </form>
</body>
</html>
