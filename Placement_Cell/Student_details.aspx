<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_details.aspx.cs" Inherits="Student_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>STUDENT DETAILS</title>
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
        <asp:Label ID="Label1" runat="server" Text="Select:"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Student</asp:ListItem>
            <asp:ListItem>Company</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" TableName="StudentDetails">
        </asp:LinqDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="studentid" DataSourceID="LinqDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="studentid" HeaderText="Student ID" ReadOnly="True" SortExpression="studentid" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
                <asp:BoundField DataField="mailid" HeaderText="Email ID" SortExpression="mailid" />
                <asp:BoundField DataField="mobno" HeaderText="Contact No" SortExpression="mobno" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                <asp:BoundField DataField="dept" HeaderText="Department" SortExpression="dept" />
                <asp:BoundField DataField="degree" HeaderText="Degree" SortExpression="degree" />
                <asp:BoundField DataField="ssc" HeaderText="SSC (%)" SortExpression="ssc" />
                <asp:BoundField DataField="hsc" HeaderText="HSC (%)" SortExpression="hsc" />
                <asp:BoundField DataField="ug" HeaderText="UG (%)" SortExpression="ug" />
                <asp:BoundField DataField="pg" HeaderText="PG (%)" SortExpression="pg" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>
    </form>
</body>
</html>
