<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration Form</title>
</head>
<body>
    <center>
        <h2>Student Enrollment Form</h2>
        <hr>
        <marquee style = "color: red;"> <h3> Link Open till Wednesday 10 July, 2024 upto 5 pm </h3></marquee>
        <form method = "post" action ="register.jsp">

        <table border="4">
        <tr>
            <td>Candidate Name</td>
            <td><input type="text" placeholder="Enter Name" id="name" name="name" required></td>
        </tr>
        <tr>
            <td>Roll Number</td>
            <td><input type="text" placeholder="Enter Roll No" id="roll" name="roll" required></td>
        </tr>
        <tr>
            <td>Email Address</td>
            <td><input type="email" placeholder="Enter Email" id="email" name="email" required></td>
        </tr>
        <tr>
            <td>Department</td>
            <td>
                <select id="department" name="dept" required>
                    <option value="None"> - Select - </option>
                    <option value="CSE">Computer Science Engineering</option>
                    <option value="ECE">Electronics and Communication Engineering</option>
                    <option value="EEE">Electrical and Electronics Engineering</option>
                    <option value="ME">Mechanical Engineering</option>
                    <option value="CE">Civil Engineering</option>
                </select>
            </td>
        </tr>

        <tr>
            <td>Course Enrolled</td>
            <td>
                <select id="course" name="enrol" required>
                    <option value="None"> - Select - </option>
                    <option value="py">Python</option>
                    <option value="java">Java</option>
                    <option value="c">C</option>
                    <option value="cpp">C++</option>
                    <option value="ruby">Ruby</option>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center;">
                <input type="submit" value="Submit">
                <input type="reset" value="Reset">
            </td>
        </tr>
        </table>
        </form>
            <br>
            <a href="display.jsp"><h2>Display</h2></a>
            <br>
        </center>
    </body>
</html>
