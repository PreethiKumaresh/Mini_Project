<%-- 
    Document   : login
    Created on : Oct 1, 2018, 10:58:21 PM
    Author     : Dell
--%>

<%@page import="ee.NewEntity"%>
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
        <title>LOGIN</title>
    </head>
    <body>
        <div align="center">
            <img src="Images/p5.png" alt="Image" height="249px" width="431px">
        </div>
        <form  method="post">
            <div align="center">
                <table><tr><td><a href="login.jsp" class="link">Login</a></td>
                        <td></td>
                        <td><a  href="register.jsp" class="link">Register</a></td>
                        <td></td>
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
                    <td>Password:</td>
                    <td><input type="text" name="pwd" required></td>
                    <td>
                        <% if(request.getParameter("submit")!=null){
                            if(request.getParameter("pwd").equals("")){%>
                            <label>* Required</label>
                        <%}}%>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input class="myButton" type="submit" name="submit" class="btn1" value=" Submit"></td>
                </tr>
                <tr>
                    <td></td>
                    <td align="right"><b><a href="forgot.jsp" class="forgot">* Forgot Password</a></b></td>
                </tr>
            </table><br><br>
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
                
                String id=request.getParameter("uname");
                String password=request.getParameter("pwd");
                if(id.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin"))
                {
                    RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
                    rd.forward(request, response);
                }
                else
                {
                    login l=session_placement.findByID(id);
                    if(l==null)
                    {
                        out.println("<h3 align=center><b>INVALID: USERNAME DOES NOT EXISTS</b></h3>");
                    }
                    else
                    {
            
                        if(l.getPassword().equals(password))
                        {
                            session.setAttribute("user", id);
                            RequestDispatcher rd=request.getRequestDispatcher("validuser.jsp");
                            rd.forward(request, response);
                        }
                        else
                        {
                            out.println("<h3 align=center><b>INVALID: PASSWORD</b></h3>");
                        }
                    }
                }
            }
        %>            
    </body>
</html>
