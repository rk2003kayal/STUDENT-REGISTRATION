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

    Connection conn;
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
            <table border ="10">
                <tr>
                    <td> Candidate name </td>
                    <td> <%= rst.getString(2) %></td>
                </tr>
                <tr>
                    <td> Candidate roll number </td>
                    <td> <%= rst.getString(3) %></td>
                </tr>
                <tr>
                    <td> Candidate email address </td>
                    <td> <%= rst.getString(4) %></td>
                </tr>
                <tr>
                    <td> Candidate department </td>
                    <td> <%= rst.getString(5) %></td>
                </tr>
                <tr>
                    <td> Candidate Course enrolled </td>
                    <td> <%= rst.getString(6) %></td>
                </tr>

                <h3>ID FOUND!!</h3>
                <hr>
            </table>
            </center>
            <br>
            <h3><a href = "update.jsp">Click </a> to edit your credentials</h3>
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

