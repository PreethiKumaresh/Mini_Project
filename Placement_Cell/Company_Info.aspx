<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Company_Info.aspx.cs" Inherits="Company" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>COMPANY INFORMATION</title>
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
    </div><br />
    <div align="center">
       <b><asp:Label ID="lbstatus" runat="server" Text=""></asp:Label></b>
    </div>
    <form id="form1" runat="server">
    <div>
    <table align="center">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Compan ID:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            &nbsp;<br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="* Please Enter a valid ID" ForeColor="Red" ValidationExpression="jp[1-9]"></asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Company Name:"></asp:Label>
             </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
             </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Email ID:"></asp:Label>
             </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
             </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="* Please Enter a valid email ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Address:"></asp:Label>
             </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
             </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Mobile No:"></asp:Label>
             </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
             </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" EnableClientScript="False" ErrorMessage="* Please Enter 10-digit number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
             </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Post:"></asp:Label>
             </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
             </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Pay:"></asp:Label>
             </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
             </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Eligibility Criteria:"></asp:Label>
             </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
             </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Cut Off:"></asp:Label>
             </td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
             </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red" ControlToValidate="TextBox9"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Position Available:"></asp:Label>
             </td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
             </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red" ControlToValidate="TextBox10"></asp:RequiredFieldValidator>
                <br />
             </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Application Final Date:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
             </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red" ControlToValidate="TextBox11"></asp:RequiredFieldValidator>
             </td>
        </tr>
    </table>
        <div align="center">
            <br />
        <asp:Button CssClass="myButton" ID="add" runat="server" Text="ADD" OnClick="add_Click" Width="122px" />
        <br /><br />
        </div>
    </div>
    </form>
</body>
</html>
