<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Students_Applied.aspx.cs" Inherits="Students_Applied" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>STUDENTS APPLIED</title>
    <link href="common2.css"  type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
    <div align="center">
        <h3>The following are the students who have applied for job.</h3>
        <h3><asp:Label ID="lbstudentno" runat="server" Text=""></asp:Label></h3>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" TableName="StudentsJobApplieds" Select="new (studentid, companyid)">
        </asp:LinqDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="LinqDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="studentid" HeaderText="Student ID" ReadOnly="True" SortExpression="studentid" />
                <asp:BoundField DataField="companyid" HeaderText="Company ID" SortExpression="companyid" ReadOnly="True" />
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
        <br />

    </div>
    </div>
    </form>
</body>
</html>
