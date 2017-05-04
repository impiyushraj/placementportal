<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminDeleteData.aspx.cs" Inherits="AdminDeleteData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Delete Student Complete Data</h2>
        <h4>Login, Personal & Academic Data of selected Student will be deleted</h4>
        <h4>Enter Student Roll No</h4>
        <asp:TextBox ID="txtRollNo" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" OnClientClick="return confirm('Do you want to Delete Complete Data of Entered Student');" />
    </div>
    </form>
</body>
</html>
