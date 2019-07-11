<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REGISTRATION</title>
    <link href="common.css"  type="text/css" rel="stylesheet" />
</head>
<body>
    <div align="center">
        <asp:Image ID="Image1" runat="server"  ImageUrl="Static/p5.png" Height="246px" Width="431px"/>
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
    <table align="center">
            <tr>
                <td><b><asp:Label ID="lbname" runat="server" Text="User Name"></asp:Label></b></td>
                <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtname" EnableClientScript="False" ErrorMessage="* Invalid Username" ForeColor="Red" ValidationExpression="[1-9]{2}pcsa[0-9]{3}|[1-9]{2}ucsa[0-9]{3}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td><b><asp:Label ID="lbpwd1" runat="server" Text="New Password"></asp:Label></b></td>
                <td><asp:TextBox ID="txtpwd1" runat="server" TextMode="Password"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd1" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td><b><asp:Label ID="lbpwd2" runat="server" Text="Confirm Password"></asp:Label></b></td>
                <td><asp:TextBox ID="txtpwd2" runat="server" TextMode="Password"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpwd2" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpwd1" ControlToValidate="txtpwd2" EnableClientScript="False" ErrorMessage="* Password are not equal" ForeColor="Red"></asp:CompareValidator>
                 </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td align="center"><asp:Button CssClass="myButton" ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" Width="128px" /></td>
            </tr>
        </table>
    </div>
        <br />
        <div align="center">
            <b><asp:Label ID="lbcheck" runat="server" ForeColor="Red" ></asp:Label></b>
        </div>
    </form>
</body>
</html>
