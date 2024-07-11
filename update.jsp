<%@ page language = "java" contentType = "text/html; charset = UTF-8"
    pageEncoding = "UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Editing data</title>
</head>
<body>
    <center>
        <h3>Update Data</h3>
        <hr>
        <form action ="updateback.jsp" method = "get">
            <table border = "5">
            <tr>
                <td>Enter ID Number</td>
            </tr>
            <tr>
                <td><input type = "number" name ="id" required/></td>
            </tr>
            <tr>
                <td><button type = "submit"/>Search</button></td>
            </tr>
        </form>
    </center>
</body>
</html>
