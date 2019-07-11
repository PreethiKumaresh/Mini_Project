<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN</title>
    <link href="common.css"  type="text/css" rel="stylesheet" />
</head>
<body>
    <div align="center">
        <asp:Image ID="Image1" runat="server"  ImageUrl="Static/p5.png" Height="249px" Width="431px"/>
    </div><br /><br />
    <div align="center">
        <table>
            <tr><td><a href="Login.aspx">Login</a></td><td></td>
                <td><a href="Register.aspx">Register</a></td><td></td>
            </tr>
        </table>
    </div>
    <form id="form1" runat="server">
    <div>
    <div>
        <table align="center">
            <tr>
                <td><b><asp:Label ID="lbname" runat="server" Text="User Name"></asp:Label></b></td>
                <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" EnableClientScript="False" ErrorMessage="* Required" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><b><asp:Label ID="lbpwd" runat="server" Text="Password"></asp:Label></b></td>
                <td><asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr><td><td></td></td></tr>
            <tr>
                <td>&nbsp;</td>
                <td align="center"><asp:Button CssClass="myButton" ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" Width="130px" /></td>
            </tr>
        </table>
    </div><br />
        <div align="center">
            <b><asp:Label ID="lbcheck" runat="server" ForeColor="Red"></asp:Label></b><br />
        </div>
    </div>
    </form>
</body>
</html>
