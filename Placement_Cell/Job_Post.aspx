<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Job_Post.aspx.cs" Inherits="Job_Post" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PLACEMENT DETAILS</title>
    <style type="text/css">
        .auto-style1 {
            width: 196px;
        }
    </style>
    <link href="common1.css"  type="text/css" rel="stylesheet" />
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
        <h3>The Following are the details of the Company available for Campus Placement.<br /></h3>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" TableName="detailCompanies">
        </asp:LinqDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="companyid" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="companyid" HeaderText="Company ID" ReadOnly="True" SortExpression="companyid" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="emailid" HeaderText="Email ID" SortExpression="emailid" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                <asp:BoundField DataField="mobno" HeaderText="Contact No" SortExpression="mobno" />
                <asp:BoundField DataField="jpost" HeaderText="Post" SortExpression="jpost" />
                <asp:BoundField DataField="jpay" HeaderText="Pay" SortExpression="jpay" />
                <asp:BoundField DataField="eligib" HeaderText="Eligible" SortExpression="eligib" />
                <asp:BoundField DataField="cutoff" HeaderText="Cutoff" SortExpression="cutoff" />
                <asp:BoundField DataField="postavai" HeaderText="Available Position" SortExpression="postavai" />
                <asp:BoundField DataField="app_final_date" HeaderText="Applicatio Final Date" SortExpression="app_final_date" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <table>
            <tr>
                <td class="auto-style1">
        <asp:Label ID="Label1" runat="server" Text="Choose the Company ID"></asp:Label>
                    :</td><td></td><td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="LinqDataSource1" DataTextField="companyid" DataValueField="companyid">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                </td><td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" EnableClientScript="False" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td> 
        <asp:Button CssClass="myButton" ID="Button1" runat="server" OnClick="Button1_Click" Text="Apply  " Width="143px" />
    
                </td>
            </tr>
        </table>
        <br />
        <h3><asp:Label ID="lbstatus" runat="server" Text=""></asp:Label></h3>
    </div>
    </form>
</body>
</html>
