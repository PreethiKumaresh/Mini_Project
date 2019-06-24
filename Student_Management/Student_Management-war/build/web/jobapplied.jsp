<%-- 
    Document   : jobapplied
    Created on : Sep 26, 2018, 11:50:18 PM
    Author     : Dell
--%>

<%@page import="java.util.List"%>
<%@page import="ee.jobapplied"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="ss.session_placementLocal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Job Applied</title>
        <link rel="stylesheet" href="common.css">
    </head>
    <body style="background-color: #232466;">
        <form>
            <br><br>
            <div align="center" style="background-color: #FFFFFF;">  
                <table>
                    <tr>
                        <td><a class="link" href="validuser.jsp">Home</a></td><td></td>
                        <td><a class="link" href="resume.jsp">Student Information</a></td><td></td>
                        <td><a class="link" href="jobportal.jsp">Job Portal</a></td><td></td>
                        <td><a class="link" href="jobapplied.jsp">Job Applied</a></td><td></td>
                        <td><a class="link" href="login.jsp">Logout</a></td><td></td>
                    </tr>
                </table>
            </div>
        </form>
        <%
            session_placementLocal session_placement = null;
                String user=session.getAttribute("user").toString();
    
                try {
                    Context c = new InitialContext();
                    session_placement = (session_placementLocal) c.lookup("java:global/Student_Management/Student_Management-ejb/session_placement!ss.session_placementLocal");
                } catch (NamingException ne) { }
                %>
                <br>
                <div align="center" style="background-color: #FFFFFF;">
                    <h3><b>THE FOLLOWING ARE THE LIST OF COMPANY WHICH YOU HAVE APPLIED</b></h3>
                <table border="1" cellpadding="5" style="border-collapse: collapse">
                    <tr></tr>
                    <tr>
                        <th>S.NO</th>
                        <th>COMPANY NAME</th>
                    </tr>
                <%
                    int count=1;
                    List<jobapplied> jobs=session_placement.findStudentApplied(user);
            for (jobapplied j : jobs){%>
                    <tr>
                        <td><%=count%></td>
                        <td><%=j.getCompanyid()%></td>
                    </tr>
                <%
                //out.println("Student: "+j.getStudentid()+"Company "+j.getCompanyid());
                count=count+1;
            }%>
                </table>
                </div>

                
        <%
            
            
        %>
    </body>
</html>
