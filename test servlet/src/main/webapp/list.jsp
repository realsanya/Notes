<%@ page import="java.util.List" %>
<%@ page import="app.model.Model" %><%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 15.09.2020
  Time: 18:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Notes list</title>
    <link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
<div>
    <h1>Welcome to the notes list!</h1>
</div>

<div>
    <div>
        <div>
            <h2>Notes</h2>
        </div>
        <%
            List<String> notes = (List<String>) request.getAttribute("notes");

            if (notes != null && !notes.isEmpty()) {
                out.println("<ui>");
                for (String s : notes) {
                    out.println("<li style = 'margin-top: 20px; font-size:16px;'>" + s + "</li>");
                }
                out.println("</ui>");
            } else out.println("<p>There are no notes yet! Maybe you want to create a note? </p>");
        %>
    </div>
</div>

<div>
    <button onclick="location.href='/test_servlet_war/add'">Add new note</button>
    <button onclick="location.href='/test_servlet_war'">Back to main</button>
</div>


</body>
</html>
