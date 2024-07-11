<%@ page language = "java" contentType = "text/html; charset = UTF-8"
    pageEncoding = "UTF-8"%>

<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.PreparedStatement" %>
<%
    final String Url = "jdbc:mysql://localhost:3306/STUDENT";
    final String Username = "root";
    final String Password = "root";

    Connection conn;
    PreparedStatement pst;

    try
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(Url, Username, Password);
        if(conn != null)
        {
            String name = request.getParameter("name");
            String roll = request.getParameter("roll");
            String email = request.getParameter("email");
            String dept = request.getParameter("dept");
            String enrol = request.getParameter("enrol");
            String query = "insert into stud(name, roll, email, department, course) values(?,?,?,?,?)";
            pst = conn.prepareStatement(query);
            pst.setString(1, name);
            pst.setString(2, roll);
            pst.setString(3, email);
            pst.setString(4, dept);
            pst.setString(5, enrol);
            pst.executeUpdate();

            %>
                <h1> Your data has been submitted! You will get an email once it is verified from college.</h1>
                <a href = "index.jsp">Click Here</a><h3>for home page</h3>
            <%
        }
    }

    catch(Exception e)
    {
        e.printStackTrace();
           %>
                <h1>Server temporarily down for maintainence. Try again later.</h1>
                <a href = "index.jsp">Click Here</a><h3>for home page</h3>
       <%
    }
%>
