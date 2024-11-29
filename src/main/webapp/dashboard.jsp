<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Check if user is logged in using session
    String logged=(String)request.getAttribute("isLoggedIn");
	String cookieUser=(String)request.getAttribute("cookieUsername");
    String name = (String) request.getAttribute("name");
    String username = (String) request.getAttribute("username");
    String email = (String) request.getAttribute("email");
    String phone = (String) request.getAttribute("phone");

    if (name == null || username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
</head>
<body>
    <h1>Welcome to Your Dashboard</h1>
    <p><strong>comes from cookies->Logged:</strong> <%= cookieUser+" ("+logged+")" %></p>
    <br>
   <h3 >comes from database with session</h3>
    <p><strong>Name:</strong> <%= name %></p>
    <p><strong>Username:</strong> <%= username %></p>
    <p><strong>Email:</strong> <%= email %></p>
    <p><strong>Phone:</strong> <%= phone %></p>

    <form action="logout" method="get">
        <button type="submit">Logout</button>
    </form>
</body>
</html>
