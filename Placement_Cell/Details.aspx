<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DETAILS</title>
    <link href="common2.css"  type="text/css" rel="stylesheet" />
</head>
<body>
     <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="Static/p3.jpg" />
    </div>
    <div align="center">
        <table>
            <tr>
                <td><a href="Admin.aspx">Home</a></td>
                <td><a href="Company_Info.aspx">Company Infomation</a></td>
                <td><a href="Details.aspx">Details</a></td>
                <td><a href="Students_Applied.aspx">Job Applied</a></td>
                <td><a href="Login.aspx">Logout</a></td>
            </tr>
        </table>
    </div>
    <form id="form1" runat="server">
    <div align="center">
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Select:"></asp:Label>&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Student</asp:ListItem>
            <asp:ListItem>Company</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
