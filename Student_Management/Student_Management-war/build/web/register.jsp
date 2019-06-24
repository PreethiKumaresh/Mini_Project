<%-- 
    Document   : register
    Created on : Oct 1, 2018, 11:03:35 PM
    Author     : Dell
--%>


<%@page import="ee.login"%>
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
        <title>REGISTER</title>
    </head>
    <body>
        <div align="center">
            <img src="Images/p5.png" alt="Image" height="249px" width="431px">
        </div>
        <form method="post">
            <div align="center">  
                <table><tr><td><a class="link" href="login.jsp">Login</a></td><td></td>
                        <td><a class="link" href="register.jsp">Register</a></td><td></td>
                    </tr></table>
            <table>
                <tr>
                    <td>Username:</td>
                    <td><input type="text" name="uname" required></td>
                    <td>
                        <% if(request.getParameter("submit")!=null){
                            if(request.getParameter("uname").equals("")){%>
                            <label>* Required</label>
                        <%}}%>
                    </td>
                </tr>
                <tr>
                    <td>New Password:</td>
                    <td><input type="text" name="pwd1" ></td>
                    <td>
                        <% if(request.getParameter("submit")!=null){
                            if(request.getParameter("pwd1").equals("")){%>
                            <label>* Required</label>
                        <%}}%>
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password:</td>
                    <td><input type="text" name="pwd2" ></td>
                    <td>
                        <% if(request.getParameter("submit")!=null){
                            if(request.getParameter("pwd2").equals("")){%>
                            <label>* Required</label>
                            <%
                             }else if(!request.getParameter("pwd1").equals(request.getParameter("pwd2"))){%>
                            <label>* Password does not match</label>
                        <%}}%>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input class="myButton" type="submit" name="submit" value=" Submit"></td>
                </tr>
            </table>
            </div>
        </form>
                    
        <%
            if(request.getParameter("submit")!=null)
            {
               session_placementLocal session_placement = null;
    
                try {
                    Context c = new InitialContext();
                    session_placement = (session_placementLocal) c.lookup("java:global/Student_Management/Student_Management-ejb/session_placement!ss.session_placementLocal");
                } catch (NamingException ne) { }
                if(request.getParameter("pwd1").equalsIgnoreCase( request.getParameter("pwd2")))
                {
                    String id=request.getParameter("uname");
                    String password=request.getParameter("pwd1");
                    login l=session_placement.findByID(id);
                    if(l==null)
                    {
                        session_placement.insert_login(id, password);
                        out.println("<h3 align=center><b>Successfully Registered!!</b></h3>");
                    }
                    else
                    {
                        out.println("<h3 align=center><b>You Have Already Registered!!</b></h3>");
                    }
                    
                }
            }
        %>  
        
    </body>
</html>
