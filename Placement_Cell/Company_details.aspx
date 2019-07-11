<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Company_details.aspx.cs" Inherits="Company_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>COMPANY DETAILS</title>
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
    <div align="center">
    <form id="form1" runat="server">
        <br />
        <asp:Label ID="Label1" runat="server" Text="Select:"></asp:Label>
        
        &nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Student</asp:ListItem>
            <asp:ListItem>Company</asp:ListItem>
        </asp:DropDownList>
       
        <br />
        <br />
        <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="DataClassesDataContext" EnableDelete="True" EnableUpdate="True" EntityTypeName="" TableName="detailCompanies">
        </asp:LinqDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="companyid" DataSourceID="LinqDataSource3" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
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
                <asp:BoundField DataField="app_final_date" HeaderText="Application Final Date" SortExpression="app_final_date" />
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
       
    </form>
    </div>
</body>
</html>
