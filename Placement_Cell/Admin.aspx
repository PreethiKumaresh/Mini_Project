<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADMINISTRATION</title>
    <link href="common2.css"  type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="Static/p3.jpg" />
    </div>
    <div align="center">
        <table >
            <tr>
                <td><a href="Admin.aspx">Home</a></td>
                <td><a href="Company_Info.aspx">Company Infomation</a></td>
                <td><a href="Details.aspx">Details</a></td>
                <td><a href="Students_Applied.aspx">Job Applied</a></td>
                <td><a href="Login.aspx">Logout</a></td>
            </tr>
        </table>
    </div>
    <div>
        <h2 align="center">Welcome Admin</h2>
    </div>
    </form>
</body>
</html>
