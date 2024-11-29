<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String logged = (String) request.getAttribute("isLoggedIn");
    String cookieUser = (String) request.getAttribute("cookieUsername");
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
    <meta name="description" content="User Dashboard showcasing courses and user details.">
    <meta name="author" content="Your Name">
    <title>User Dashboard</title>
    <style>
        /* Global Styles */
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #6dd5ed, #2193b0);
            color: #fff;
        }

        .dashboard {
            display: flex;
            
            min-height: 100vh;
            
            
        }

        /* Sidebar */
        .sidebar {
            width: 250px;
            overflow:wrap;
            margin-right:10px;
            background: #1e3c72;
            padding: 20px;
            position: fixed;
            height: 100%;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.5);
        }

        .sidebar h2 {
            text-align: center;
            color: #f1c40f;
            margin-bottom: 20px;
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
        }

        .sidebar ul li {
            margin: 15px 0;
            font-size: 1rem;
        }

        .sidebar ul li p {
            color: #ecf0f1;
        }

        /* Content */
        .content {
            margin-left: 270px;
            padding: 20px;
            flex-grow: 1;
        }

        .content h1 {
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
            margin-bottom: 20px;
        }

        /* Button Styles */
        button {
            background: #f39c12;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        button:hover {
            background: #d35400;
        }

        /* Courses Section */
        .courses {
            margin-top: 30px;
        }

        .course-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
        }

        .course-card {
            background: white;
            color: #2c3e50;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .course-card h3 {
            color: #2980b9;
            margin-bottom: 10px;
        }

        .course-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3);
        }

        @media (max-width: 768px) {
            .dashboard {
                flex-direction: column;
            }

            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }

            .content {
                margin-left: 0;
            }
        }
    </style>
</head>
<body>
    <div class="dashboard">
        <!-- Sidebar -->
        <aside class="sidebar">
            <h2>Dashboard</h2>
            <ul>
                <li><p><strong>From Cookies:</strong> <%= cookieUser + " (" + logged + ")" %></p></li>
                <hr>
                <li><p><strong>From Datavase: <hr>Name:</strong> <%= name %></p></li>
                <li><p><strong>Username:</strong> <%= username %></p></li>
                <li><p><strong>Email:</strong> <%= email %></p></li>
                <li><p><strong>Phone:</strong> <%= phone %></p></li>
                <hr>
            </ul>
        </aside>
		<div style="width:50px; height:100%;"></div>
        <!-- Main Content -->
        <main class="content">
            <h1>Welcome, <%= name %>!</h1>
            <p>Your personalized dashboard is here.</p>

            <!-- Logout Button -->
            <form action="logout" method="get">
                <button type="submit">Logout</button>
            </form>

            <!-- Courses Section -->
            <section class="courses">
                <h2>Available Programming Courses</h2>
                <div class="course-grid">
                    <% String[] courses = { "Java Fundamentals", "Advanced Java", "React.js", "Python for Beginners", "Node.js" };
                        for (String course : courses) { %>
                        <div class="course-card">
                            <h3><%= course %></h3>
                            <p>Master <%= course %> with hands-on projects and real-world applications.</p>
                            <button id="en" >Enroll Now</button>
                        </div>
                    <% } %>
                </div>
            </section>
        </main>
    </div>
  
</body>
</html>
