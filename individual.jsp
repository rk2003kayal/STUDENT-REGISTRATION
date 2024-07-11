<%@ page language = "java" contentType = "text/html; charset = UTF-8"
    pageEncoding = "UTF-8"%>

<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.PreparedStatement" %>
<%@page import = "java.sql.ResultSet" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Display by ID</title>
</head>
<body>
    <center>
        <hr>
        <h1>Check Student Details</h1>
        <hr>
        <form action = "fetch.jsp" method = "get">
            <table border = "4">
            <tr>
                <th>Enter ID Number</th>
            </tr>
            <tr>
                <td><input type = "number" name ="id" required/></td>
            </tr>
            <tr>
                <td><button type = "submit"/>Fetch</button></td>
            </tr>
        </form>
    </center>
</body>
</html>

