<%-- 
    Document   : studentsapplied
    Created on : Sep 27, 2018, 12:35:06 AM
    Author     : Dell
--%>

<%@page import="ee.jobapplied"%>
<%@page import="java.util.List"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="ss.session_placementLocal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Students Applied</title>
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
            </div>
        </form>
        <%
            session_placementLocal session_placement = null;
 
                try {
                    Context c = new InitialContext();
                    session_placement = (session_placementLocal) c.lookup("java:global/Student_Management/Student_Management-ejb/session_placement!ss.session_placementLocal");
                } catch (NamingException ne) { }
                %>
                <br>
                <div align="center" style="background-color: #FFFFFF;">
                    <h3><b>LIST OF STUDENTS WHO HAVE APPLIED</b></h3>
                <table border="1" cellpadding="5" style="border-collapse: collapse">
                    <tr></tr>
                    <tr>
                        <th>S.NO</th>
                        <th>STUDENT ID</th>
                        <th>COMPANY NAME</th>
                    </tr>
                <%
                    List<jobapplied> jobs = session_placement.findAllJobApplies();
                    int count=1;
                    for (jobapplied j : jobs)
                    {%>
                    <tr>
                        <td><%=count+"."%></td>
                        <td><%=j.getStudentid()%></td>
                        <td><%=j.getCompanyid()%></td>
                    </tr>
                    <%count=count+1;}%>
                </table>
                </div>
                
        %>
    </body>
</html>
