<%-- 
    Document   : jobportal
    Created on : Sep 26, 2018, 11:42:18 PM
    Author     : Dell
--%>

<%@page import="ee.student"%>
<%@page import="ee.company"%>
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
        <title>Job Portal</title>
        <link rel="stylesheet" href="common.css">
    </head>
    <body style="background-color: #232466;">
        <%
            session_placementLocal session_placement = null;
                
                String user=session.getAttribute("user").toString();
    
                try {
                    Context c = new InitialContext();
                    session_placement = (session_placementLocal) c.lookup("java:global/Student_Management/Student_Management-ejb/session_placement!ss.session_placementLocal");
                } catch (NamingException ne) { }
                
        %>
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
                        <td>Select the Company Name: 
                            <select name="cname">
       <%
                List<company> coms = session_placement.findAllCompanies();
                    for (company c : coms)
                    {%>
                    <option value="<%=c.getId().toString()%>"><%=c.getId()%></option>   
                    <%}%>
        </select>
                        </td>
                        <td></td><td></td>
                        <td><input class="myButton1" type="submit" name="apply" value="APPLY"></td>
                    </tr>
                </table>
            </div>
        </form>
              <%
                    if(request.getParameter("apply")!=null)
                    {
                        String sid=user;
                        String cid=request.getParameter("cname");
                        student s=session_placement.find_student(user);
                        if(s==null)
                        {
                         out.println("<h3 align=center><font color=white><b>Please Enter Your Details in Student Information</font></b></h3>");   
                        }
                        else
                        {
                            Long stu_per=s.getPercentage();
                            company com=session_placement.find_company(cid);
                            //out.println("<h3 align=center><font color=white><b>Company Name"+cid+"</font></b></h3>");   
                            if(com!=null)
                            {
                                Long com_per=com.getCutoff();
                                if(stu_per >= com_per)
                                {
                                    session_placement.insert_jobapplied(sid, cid);
                                    out.println("<h3 align=center><font color=white><b>Successfully Applied!!</font></b></h3>");
                                    //out.println("<h3 align=center><b>SID: "+sid+" CID:"+cid+"</b></h3>");
                                }
                                else
                                {
                                    out.println("<h3 align=center><font color=white><b>SORRY YOUR NOT ELIGIBLE FOR THIS JOB</font></b></h3>");   
                                }
                                
                            }
                            else
                            {
                               out.println("<h3 align=center><font color=white><b>COMPANY NAME DOES NOT EXIST</font></b></h3>");   
                            }
                        }
                    }
                    if(request.getParameter("submit")!=null)
                    {
                        if(request.getParameter("list").equalsIgnoreCase("student"))
                        {
                            student s=session_placement.find_student(user);
                            %>
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
                </table></div>
                    <%  }
                    else if(request.getParameter("list").equalsIgnoreCase("company")){
                      %>
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
                    List<company> cc = session_placement.findAllCompanies();
                    for (company c : cc)
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
                        else{
                            out.println("");
                        }
                    }
                    
                %>   
    </body>
</html>
