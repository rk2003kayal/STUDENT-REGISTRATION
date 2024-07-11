<%@ page language = "java" contentType = "text/html; charset = UTF-8"
    pageEncoding = "UTF-8"%>

<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.PreparedStatement" %>
<%@page import = "java.sql.ResultSet" %>


<%
    final String Url = "jdbc:mysql://127.0.0.1:3306/STUDENT";
    final String username = "root";
    final String password = "root";

    Connection conn = null;
    PreparedStatement pst;
    ResultSet rst;

    try
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(Url, username, password);

        if(conn != null)
        {
            int id = Integer.parseInt(request.getParameter("id"));
            String query = "select * from stud where id =?";
            pst = conn.prepareStatement(query);
            pst.setInt(1, id);
            rst = pst.executeQuery();

            if(rst.next())
            {
            %>
            <center>
                <form action ="updatebacktwo.jsp" method = "post">
                    <table border ="10">
                        <tr>
                            <td>Candidate ID</td>
                            <td><input type="number" name="id" value="<%= rst.getInt(1) %>" readonly/></td>
                        <tr>
                        <tr>
                            <td>Candidate name</td>
                            <td><input type="text" name="name" value="<%= rst.getString(2) %>"></td>
                        </tr>
                        <tr>
                            <td>Candidate roll number</td>
                            <td><input type="text" name="roll" value="<%= rst.getString(3) %>"></td>
                        </tr>
                        <tr>
                            <td>Candidate email address</td>
                            <td><input type="text" name="email" value="<%= rst.getString(4) %>"></td>
                        </tr>
                        <tr>
                            <td>Candidate department</td>
                            <td><select id="department" name="dept" value ="<%= rst.getString(5) %>" required>
                                <option value="CSE">Computer Science Engineering</option>
                                <option value="ECE">Electronics and Communication Engineering</option>
                                <option value="EEE">Electrical and Electronics Engineering</option>
                                <option value="ME">Mechanical Engineering</option>
                                <option value="CE">Civil Engineering</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td> Candidate Course enrolled </td>
                            <td><select id="course" name="enrol" value="<%= rst.getString(6) %>">
                                <option value="py">Python</option>
                                <option value="java">Java</option>
                                <option value="c">C</option>
                                <option value="cpp">C++</option>
                                <option value="ruby">Ruby</option>
                            </td>
                        </tr>
                        <tr>
                            <td><button type = "submit"/>Update</button></td>
                        </tr>
                        <h3>EDIT YOUR DETAILS</h3>
                        <hr>
                    </table>
                </form>
            </center>
            <br>
            <%
            }
            else
            {
                %>
                <h3>ID NOT FOUND</h3>
                <%
            }
        }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
%>

