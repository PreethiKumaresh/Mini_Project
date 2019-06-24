<%-- 
    Document   : forgot
    Created on : Sep 13, 2018, 4:35:43 PM
    Author     : Dell
--%>


<%@page import="ee.login"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="ss.session_placementLocal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forget Password</title>
        <link rel="stylesheet" href="login.css">
        <link rel="stylesheet" href="common.css">
    </head>
    <body>
        <div align="center">
            <img src="Images/p5.png" alt="Image" height="249px" width="431px">
        </div>
        <form>
            <div align="center">   
                <table><tr><td><a class="link" href="login.jsp">Login</a></td><td></td>
                        <td><a class="link" href="register.jsp">Register</a></td><td></td>
                    </tr></table>
            <table>
                <tr>
                    <td>Please enter your username:</td>
                    <td><input type="text" name="uname" required></td>
                </tr>
            </table>
            <input class="myButton" type="submit" name="submit" value="Submit">
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
                login l=session_placement.findByID(id);
                    if(l==null)
                    {
                        out.println("<h3 align=center><b>INVALID: USERNAME DOES NOT EXISTS</b></h3>");
                    }
                    else
                    {
                        out.println("<h3 align=center><b>USERNAME: "+l.getId()+" PASSWORD: "+l.getPassword()+"</b></h3>");   
                    }
            }
        %>            
    </body>
</html>
