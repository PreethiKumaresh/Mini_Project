<%-- 
    Document   : details
    Created on : Sep 27, 2018, 12:25:44 AM
    Author     : Dell
--%>

<%@page import="ee.company"%>
<%@page import="java.util.List"%>
<%@page import="ee.student"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="ss.session_placementLocal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details</title>
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
                        <td align="right">
                            <select name="list">
                                <option value="none">  </option>
                                <option value="student">Student</option>
                                <option value="company">Company</option>
                            </select>
                        </td>
                        <td></td>
                        <td></td>
                        <td><input class="myButton1" type="submit" name="submit" value="GET"></td>
                        <td></td><td></td>
                        <td>Enter the Company Name: <input type="text" name="cname"></td>
                        <td></td><td></td>
                        <td><input class="myButton1" type="submit" name="del" value="DELETE"></td>
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
            if(request.getParameter("submit")!=null)
            {
                if(request.getParameter("list").equalsIgnoreCase("student"))
                { %>
                <br>
                <div align="center" style="background-color: #FFFFFF;">
                    <h3><b>STUDENT DETAILS</b></h3><br>
                <table border="1" cellpadding="5" style="border-collapse: collapse">
                    <tr></tr>
                    <tr>
                        <th>STUDENT ID</th>
                        <th>NAME</th>
                        <th>DATE OF BIRTH</th>
                        <th>MOBILE NO</th>
                        <th>ADDRESS</th>
                        <th>DEPARTMENT</th>
                        <th>DEGREE</th>
                        <th>PERCENTAGE</th>
                    </tr>
                <%
                    List<student> studs = session_placement.findAllStudents();
                    for (student s : studs)
                    {%>
                    <tr>
                        <td><%=s.getId()%></td>
                        <td><%=s.getName()%></td>
                        <td><%=s.getDob()%></td>
                        <td><%=s.getMobno()%></td>
                        <td><%=s.getAddress()%></td>
                        <td><%=s.getDept()%></td>
                        <td><%=s.getDegree()%></td>
                        <td><%=s.getPercentage()%></td>
                    </tr>
                    <%}%>
                </table>
                </div>
                    <%
                }
                else if(request.getParameter("list").equalsIgnoreCase("company"))
                { %>
                <br>
                <div align="center" style="background-color: #FFFFFF;">
                    <h3><b>COMPANY DETAILS</b></h3>
                <table border="1" cellpadding="5" style="border-collapse: collapse">
                    <tr></tr>
                    <tr>
                        <th>COMPANY NAME</th>
                        <th>MAIL ID</th>
                        <th>ADDRESS</th>
                        <th>MOBILE NO</th>
                        <th>POST</th>
                        <th>PAY</th>
                        <th>CUT OFF</th>
                        <th>POSITION AVAILABLE</th>
                        <th>APPLICATION FINAL DATE</th>
                    </tr>
                <%
                    List<company> coms = session_placement.findAllCompanies();
                    for (company c : coms)
                    {%>
                    <tr>
                        <td><%=c.getId()%></td>
                        <td><%=c.getMailid()%></td>
                        <td><%=c.getAddress()%></td>
                        <td><%=c.getMobno()%></td>
                        <td><%=c.getPost()%></td>
                        <td>RS.<%=c.getPay()%></td>
                        <td><%=c.getCutoff()+"%"%></td>
                        <td><%=c.getAvai_position()%></td>
                        <td><%=c.getApp_finaldate()%></td>
                    </tr>
                    <%}%>
                </table>
                </div>
                    <%
                }
                else
                {
                    out.println(" ");
                }
            }
            if(request.getParameter("del")!=null){
            String id=request.getParameter("cname");
            company c=session_placement.delete_company(id);
            if(c==null){
            out.println("<h3 align=center><font color=white><b>INVALID COMPANY NAME!!</b></font></h3>");
            }else{
            out.println("<h3 align=center><font color=white><b>SUCCESSFULLY DELETED</b></font></h3>");
            }
        }
        %>
               
    </body>
</html>
