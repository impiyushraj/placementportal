<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAd.aspx.cs" Inherits="ViewAd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3 style="text-align:center;">View Job Ad</h3>
        <div><center>
            <table>
                <tr>
                    <th>Company Name:</th>
                    <td><asp:Label ID="Label1" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <th>Date:</th>
                    <td><asp:Label ID="Label2" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <th>Eligibility:</th>
                    <td><asp:Label ID="Label3" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <th>Website:</th>
                    <td><asp:Label ID="Label4" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <th>Designation:</th>
                    <td><asp:Label ID="Label5" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <th>Job Opening For:</th>
                    <td><asp:Label ID="Label6" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <th>Salary Details:</th>
                    <td><asp:Label ID="Label7" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <th>Selection Process:</th>
                    <td><asp:Label ID="Label8" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <th>Job Location:</th>
                    <td><asp:Label ID="Label9" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><asp:Button ID="Button1" runat="server" Text="Previous" /></td>
                    <td><asp:Button ID="Button2" runat="server" Text="Next" /></td>
                </tr>
            </table>
            <br />
            
            </center>
        </div>
    </div>
    </form>
</body>
</html>
