<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Info.aspx.cs" Inherits="forum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>STUDENT INFORMATION</title>
    <link href="common1.css"  type="text/css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style4 {
            width: 89px;
        }
        .auto-style5 {
            height: 26px;
            width: 89px;
        }
        .auto-style6 {
            width: 108px;
        }
        .auto-style7 {
            width: 96px;
        }
        .auto-style8 {
            height: 26px;
            width: 96px;
        }
    </style>
    </head>
<body>
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
    <form id="form1" runat="server">
        <div align="center">
        <h2>Student Information</h2>
        <p style="margin-left: 40px">*All these information will be used for job posting and for academic purpose</p><br />
           <b><asp:Label ID="lbstatus" runat="server"></asp:Label></b>
        </div><br />
    <div>
        <table align="center">
            <tr>
                <td>Name:</td>
                <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td></td>
                <td>Department:</td>
                <td><asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Computer Science</asp:ListItem>
                    <asp:ListItem>Math</asp:ListItem>
                    <asp:ListItem>Physics</asp:ListItem>
                    <asp:ListItem>Chemistry</asp:ListItem>
                    <asp:ListItem>Botany</asp:ListItem>
                    <asp:ListItem>Zoology</asp:ListItem>
                    </asp:DropDownList></td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td></td>
                <td>UG:</td>
                <td><asp:TextBox ID="txtug" runat="server"></asp:TextBox></td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtug" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Date Of Birth:</td>
                <td><asp:TextBox ID="txtdob" runat="server"></asp:TextBox></td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtdob" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td></td>
                <td>Degree:</td>
                <td>
                    <asp:RadioButtonList ID="rdegree" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="rdegree_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>UG</asp:ListItem>
                        <asp:ListItem>PG</asp:ListItem>
                    </asp:RadioButtonList></td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="rdegree" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td></td>
                <td>PG:</td>
                <td><asp:TextBox ID="txtpg" runat="server"></asp:TextBox></td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtpg" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Email ID:</td>
                <td><asp:TextBox ID="txtmailid" runat="server"></asp:TextBox></td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmailid" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmailid" EnableClientScript="False" ErrorMessage="* Invalid " ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td></td>
                <td><b>Percentage:-</b></td>
                <td>&nbsp;</td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td>Mobile Number:</td>
                <td><asp:TextBox ID="txtmobno" runat="server"></asp:TextBox></td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmobno" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmobno" EnableClientScript="False" ErrorMessage="* Invalid Number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
                <td></td>
                <td>SSC-10th:</td>
                <td><asp:TextBox ID="txt10" runat="server"></asp:TextBox></td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt10" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td><td></td><td></td><td>
                &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Address:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtaddress" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style1"></td>
                <td class="auto-style1">HSC-12th:</td>
                <td class="auto-style1"><asp:TextBox ID="txt12" runat="server"></asp:TextBox></td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txt12" EnableClientScript="False" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td><td class="auto-style1"></td><td class="auto-style1"></td><td class="auto-style1">
                </td>
            </tr>
            <tr>
                <td></td><td></td><td class="auto-style4"></td><td></td><td></td><td></td><td class="auto-style7"></td><td></td><td></td><td>
                &nbsp;</td>
            </tr>
        </table>
        <table align="center">
            <tr>
                <td>
                <asp:Button CssClass="myButton" ID="Button1" runat="server" Text="Submit" Width="126px" OnClick="Button1_Click" />
                </td><td></td><td>
                <asp:Button CssClass="myButton" ID="Button3" runat="server" Text="Edit" Width="126px" OnClick="Button3_Click" CausesValidation="False" />
                </td><td></td><td>
                <asp:Button CssClass="myButton" ID="Button4" runat="server" Text="Update" Width="126px" CausesValidation="False" OnClick="Button4_Click"/>
                </td><td></td><td>
                <asp:Button CssClass="myButton" ID="Button5" runat="server" Text="Cancel" Width="126px" CausesValidation="False" OnClick="Button5_Click"/>
                </td><td></td><td>
                &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
