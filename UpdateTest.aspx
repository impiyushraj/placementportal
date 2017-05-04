<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateTest.aspx.cs" Inherits="UpdateTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div><p style="text-align:center;">Welcome To Registration Details</p></div>  
        <div>
            <center>
                <table border="1">
                <tr>
                    <td>Title</td>
                    <td style="margin-left: 280px">
                        <asp:DropDownList ID="ddltitle" runat="server">
                            <asp:ListItem Value="None">-Select-</asp:ListItem>
                            <asp:ListItem Value="Mr">Mr</asp:ListItem>
                            <asp:ListItem Value="Mrs">Mrs</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>Email ID</td>
                    <td><asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>Father's Name</td>
                    <td><asp:TextBox ID="txtFather" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><asp:Button ID="btnCancel" runat="server" Text="Cancel" /></td>
                    <td><asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" /></td>
                </tr>
            </table>
            </center>
        </div>
    </form>
</body>
</html>
