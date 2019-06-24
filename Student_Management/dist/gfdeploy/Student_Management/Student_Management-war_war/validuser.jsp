<%-- 
    Document   : validuser
    Created on : Sep 13, 2018, 5:50:27 PM
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
        <link rel="stylesheet" href="common.css">
        <title>Career Guidance</title>
    </head>
    <body style="background-color: #232466;">
        <form>
            <br><br>
            <div style="background-color: #FFFFFF;" align="center">  
                <table>
                    <tr>
                        <td><a class="link" href="validuser.jsp">Home</a></td><td></td>
                        <td><a class="link" href="resume.jsp">Student Information</a></td><td></td>
                        <td><a class="link" href="jobportal.jsp">Job Portal</a></td><td></td>
                        <td><a class="link" href="jobapplied.jsp">Job Applied</a></td><td></td>
                        <td><a class="link" href="login.jsp">Logout</a></td><td></td>
                    </tr>
                </table>
                <h1>Welcome to Student Career Zone</h1><br><br>
                <h2>Hello User!</h2><br>
                <table>
                    <tr>
                        <td><p align="justify">Welcome to Career Guidance Path  which helps you to meet your dream job!.<br>Please Follow the instruction for new user:</p></td>
                    </tr>
                    <tr>
                        <td>1. Please go and enter your information in <strong>Student Information</strong>.            </td>
                    </tr>
                    <tr>
                        <td>2. You can user <strong>Job Portal</strong> for applying jobs which are posted by the career guidance.</td>
                    </tr>
                </table>
            </div>
        </form>
        <%
            String user=session.getAttribute("user").toString();
            out.println("USER: "+user);
        %>
    </body>
</html>
