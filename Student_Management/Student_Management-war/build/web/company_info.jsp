<%-- 
    Document   : company_info
    Created on : Sep 26, 2018, 11:58:40 PM
    Author     : Dell
--%>

<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="ss.session_placementLocal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Company Information</title>
        <link rel="stylesheet" href="common.css">
    </head>
    <body style="background-color: #232466;">
        <form>
            <br><br>
            <div align="center" style="background-color: #FFFFFF;">
                <table>
                    <tr>
                        <td><a class="link" href="admin.jsp">Home</a></td><td></td>
                        <td><a class="link" href="company_info.jsp">Company Information</a></td><td></td>
                        <td><a class="link" href="details.jsp">Details</a></td><td></td>
                        <td><a class="link" href="studentsapplied.jsp">Application Status</a></td><td></td>
                        <td><a class="link" href="login.jsp">Logout</a></td><td></td>
                    </tr>
                </table>
                <table>
                <tr>
                    <td><h4><strong>COMPANY DETAILS:</strong></h4></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" required></td>
                </tr>
                <tr>
                    <td>Email ID:</td>
                    <td><input type="text" name="mailid" required></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><input type="text" name="address" required></td>
                </tr>
                <tr>
                    <td>Mobile No:</td>
                    <td><input type="text" maxlength="10" name="mob" required></td>
                </tr>
                 <tr>
                    <td><h4><strong>JOB DETAILS:</strong></h4></td>
                </tr>
                <tr>
                    <td>Post:</td>
                    <td><input type="text" name="post" required></td>
                </tr>
                <tr>
                    <td>Pay:</td>
                    <td><input type="text" name="pay" required></td>
                </tr>
                <tr>
                    <td>Cut Off:</td>
                    <td><input type="text" name="cutoff" required></td>
                </tr>
                <tr>
                    <td>No of Available Position:</td>
                    <td><input type="text" name="post_avai" required></td>
                </tr>
                <tr>
                    <td>Application Final Date:</td>
                    <td><input type="text" name="final_date" required></td>
                </tr>
                </table>
                    <table><tr><td><input class="myButton" type="submit" name="submit" value="  ADD"></td></tr></table>    
            </div>
        </form>
        <%
            session_placementLocal session_placement = null;
    
                try {
                    Context c = new InitialContext();
                    session_placement = (session_placementLocal) c.lookup("java:global/Student_Management/Student_Management-ejb/session_placement!ss.session_placementLocal");
                } catch (NamingException ne) { }
            if(request.getParameter("submit")!=null)
            {
                String name=request.getParameter("name");
                String mailid=request.getParameter("mailid");
                String address=request.getParameter("address");
                Long mobno=Long.valueOf(request.getParameter("mob"));
                String post=request.getParameter("post");
                Long pay=Long.valueOf(request.getParameter("pay"));
                Long cutoff=Long.valueOf(request.getParameter("cutoff"));
                Long avai_pos=Long.valueOf(request.getParameter("post_avai"));
                String app_final_date=request.getParameter("final_date");
                session_placement.insert_company(name, mailid, address, mobno, post, pay, cutoff, avai_pos, app_final_date);
                out.println("<h3 align=center><font color=white><b>Successfully Added!!</b></font></h3>");
            }
        %>
    </body>
</html>
