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
                       int id = Integer.parseInt(request.getParameter("id"));
                       String name = request.getParameter("name");
                       String roll = request.getParameter("roll");
                       String email = request.getParameter("email");
                       String dept = request.getParameter("dept");
                       String enrol = request.getParameter("enrol");
                       String query = "update stud set name=?, roll=?, email=?, department=?, course=? where ID=?";
                       pst = conn.prepareStatement(query);
                       pst.setString(1, name);
                       pst.setString(2, roll);
                       pst.setString(3, email);
                       pst.setString(4, dept);
                       pst.setString(5, enrol);
                       pst.setInt(6,id);
                       pst.executeUpdate();
                       response.sendRedirect("display.jsp");
        }
    }

    catch(Exception e)
    {
        e.printStackTrace();
    }
%>
