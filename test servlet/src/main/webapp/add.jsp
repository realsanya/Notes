<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.Writer" %><%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 15.09.2020
  Time: 18:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new task</title>
    <link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>

    <div>
        <%
            if (request.getAttribute("note") != null) {
                out.println("<p>Note '" + request.getAttribute("note") + "' added!</p>");
            }
        %>
        <div>
    </div>


<div>
    <h1> Wow, this is a new note!</h1>
</div>
        <div>
            <h2>Add note</h2>
        </div>

        <form method="post">
            <label>New note:
                <textarea style="margin-top: 20px" name="note"></textarea> <br />
            </label>
            <button type="submit" style="margin-top: 30px">Add</button>
        </form>
    </div>


<div>
    <button onclick="location.href='/test_servlet_war/list'">All notes</button>
</div>

</body>

</html>
