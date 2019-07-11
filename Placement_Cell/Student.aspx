<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>STUDENT</title>
    <link href="common1.css"  type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div align="center">
        <asp:Image ID="Image1" runat="server" ImageUrl="Static/p6.jpg" />
    </div>
    <div align="center">
        <table style="background-color:#1D2368;">
            <tr>
                <td><a href="Student.aspx">Home</a></td>
                <td><a href="Student_Info.aspx">Student Infomation</a></td>
                <td><a href="Job_Post.aspx">Placement</a></td>
                <td><a href="Job_Applied.aspx">Job Applied</a></td>
                <td><a href="Login.aspx">Logout</a></td>
            </tr>
        </table>
    </div>
    <div align="center">
        <h3>Welcome to Student Placement Management</h3>
    </div>
    </div>
    </form>
</body>
</html>
