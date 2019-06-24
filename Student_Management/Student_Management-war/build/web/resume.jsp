<%-- 
    Document   : resume
    Created on : Sep 13, 2018, 8:28:04 PM
    Author     : Dell
--%>

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
        <link rel="stylesheet" href="common.css">
        <title>Resume</title>
    </head>
    <body style="background-color: #232466;">
        <%
            session_placementLocal session_placement = null;
                String user=session.getAttribute("user").toString();
    
                try {
                    Context c = new InitialContext();
                    session_placement = (session_placementLocal) c.lookup("java:global/Student_Management/Student_Management-ejb/session_placement!ss.session_placementLocal");
                } catch (NamingException ne) { }
                student s1=session_placement.find_student(user);
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
                <h2><b>STUDENT INFORMATION</b></h2>    
            <table style="text-align: justify">
                <tr>
                    <td><h4><strong>PERSONAL DETAILS:</strong></h4></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" <%if(request.getParameter("edit")!= null){%>value="<%=s1.getName()%>"<%}%> required></td>
                </tr>
                <tr>
                    <td>Date Of Birth:</td>
                    <td><input type="date" name="dob" <%//Date date1=new SimpleDateFormat("dd/MM/yyyy").parse(sDate1);
                        if(request.getParameter("edit")!= null){%>value="<%=s1.getDob()%>"<%}%> required></td>
                </tr>
                <tr>
                    <td>Mobile No:</td>
                    <td><input type="text" name="mob" maxlength="10" required></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><input type="text" name="address" required></td>
                </tr>
                <tr>
                    <td><h4><strong>EDUCATIONAL DETAILS:</strong></h4></td>
                </tr>
                <tr>
                    <td>Department:</td>
                    <td>
                        <select name="dept" required>
                            <option align="center"></option>
                            <option value="cs">Computer Science</option>
                            <option value="chem">Chemistry</option>
                            <option value="phy">Physics</option>
                            <option value="math">Math</option>
                            <option value="bot">Botany</option>
                            <option value="zoo">Zoology</option>
                            <option value="pe">Public Relation</option>
                            <option value="eng">English Literature</option>
                         </select>
                    </td>
                </tr>
                <tr>
                    <td>Degree:</td>
                    <td><input type="radio" value="ug" name="degree" required>UG&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="pg" name="degree">PG</td>
                </tr>
                <tr>
                    <td>Percentage:</td>
                    <td><input type="text" name="percent" required></td>
                </tr>
            </table>
                    <table>
                        <tr><td><input class="myButton" type="submit" name="submit" value="Submit"></td><td></td>
                            <td><input class="myButton" type="submit" name="update" value="  Update"></td><td></td>
                            <td><input formnovalidate class="myButton" type="submit" name="edit" value="  Edit"></td><td></td>
                        </tr>
                    </table>
            </div>
        </form>
         <%
                
            if(request.getParameter("submit")!=null)
            {
                String id=user;
                String name=request.getParameter("name");
                String dob=request.getParameter("dob");
                Long mobno=Long.valueOf(request.getParameter("mob"));
                String address=request.getParameter("address");
                String dept=request.getParameter("dept");
                String degree=request.getParameter("degree");
                Long percent=Long.valueOf(request.getParameter("percent"));    
                session_placement.insert_student(id, name, dob, mobno, address, dept, degree, percent);
                out.println("<h3 align=center><font color=white><b>Successfully Inserted!!</b></font></h3>");
            }
            if(request.getParameter("update")!=null)
            {
                String id=user;
                String name=request.getParameter("name");
                String dob=request.getParameter("dob");
                Long mobno=Long.valueOf(request.getParameter("mob"));
                String address=request.getParameter("address");
                String dept=request.getParameter("dept");
                String degree=request.getParameter("degree");
                Long percent=Long.valueOf(request.getParameter("percent"));    
                student ee=session_placement.find_student(user);
                if(ee==null)
                {
                    out.println("<h3 align=center><font color=white><b>Invalid - ID DOES NOT EXISTS</b></font></h3>");
                }
                else
                {
                    student ee1 = new student();
                    ee1.setId(user);
                    ee1.setName(name);
                    ee1.setDob(dob);
                    ee1.setMobno(mobno);
                    ee1.setAddress(address);
                    ee1.setDept(dept);
                    ee1.setDegree(degree);
                    ee1.setPercentage(percent);
                    session_placement.update_student(ee1);
                    out.println("<h3 align=center><font color=white><b>Successfully Updated!!!</b></font></h3>");
                }
            }    
        %>            
    </body>
</html>
