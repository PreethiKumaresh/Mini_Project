<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Job_Applied.aspx.cs" Inherits="Job_Applied" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JOB APPLIED</title>
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
        <h3>The following are the details of the company list which you have applied.</h3>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EnableDelete="True" EntityTypeName="" TableName="StudentsJobApplieds" Where="studentid == @studentid">
            <WhereParameters>
                <asp:SessionParameter Name="studentid" SessionField="ID" Type="String" />
            </WhereParameters>
        </asp:LinqDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="sno" DataSourceID="LinqDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="Gainsboro" />
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                <asp:BoundField DataField="sno" HeaderText="S.No" ReadOnly="True" SortExpression="sno" InsertVisible="False" />
                <asp:BoundField DataField="studentid" HeaderText="Student ID" SortExpression="studentid" />
                <asp:BoundField DataField="companyid" HeaderText="Company ID" SortExpression="companyid" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>

    </div>
    </div>
    </form>
</body>
</html>
