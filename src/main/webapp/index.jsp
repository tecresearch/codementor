<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <style>
        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }

        /* Header */
        header {
            background: linear-gradient(to right, #fbb034, #2575fc);
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 1.5rem;
        }

        .logo {
            font-size: 2rem;
            font-weight: bold;
            margin: 0;
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(to right, #fbb034, #2575fc);
            color: white;
            text-align: center;
            padding: 50px 20px;
        }

        .hero h1 {
            font-size: 2.5rem;
            margin: 0;
        }

        .hero p {
            font-size: 1.2rem;
            margin: 10px 0 20px;
        }

        /* Form Styles */
        .form-container {
            max-width: 500px;
            margin: 30px auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-container label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        .form-container input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .form-container button {
            width: 100%;
            padding: 10px;
            background: #2575fc;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 1rem;
            cursor: pointer;
        }

        .form-container button:hover {
            background: #0056b3;
        }


        /* Footer */
        footer {
            text-align: center;
            padding: 20px;
            background: #333;
            color: white;
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <h1 class="logo">CODE MENTOR</h1>
    </header>

    <!-- Hero Section -->
    <div class="hero">
        <h1>Welcome to User Registration</h1>
        <p>Join us today and explore amazing features!</p>
    </div>

    <!-- Registration Form -->
    <div class="form-container">
        <h2>Register</h2>
        <form action="register" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <label for="phone">Phone:</label>
            <input type="tel" id="phone" name="phone" required>

            <button type="submit">Register</button>
            <p>if you have already registered</p>
            <a href="login.jsp">Login</a>
        </form>
    </div>

    
<footer style="display: flex; justify-content: center; align-items: center; background: linear-gradient(135deg, #FFD700, #FF8C00); color: white; padding: 20px; font-family: Arial, sans-serif;">
    <div style="display: flex; justify-content: space-between; width: 100%; max-width: 1200px;">
       
        
        <!-- Column 2 -->
        <div style="flex: 1; padding: 10px; text-align: center;">
            <ul style="list-style: none; padding: 0;">
                <li>Developer Team: Tecresearch</li>
                <li> Mr. Brijesh (Research & Development Head)</li>
            </ul>
        </div>
        
        <!-- Column 3 -->
        <div style="flex: 1; padding: 10px; text-align: center;">
            <ul style="list-style: none; padding: 0;">
                <li>GNIOT-CSE-IOT Elite Club</li>
                <li>Contact Us: <a href="mailto:bnlv1212@gmail.com" style="color: white; text-decoration: none; font-weight: bold;">bnlv1212@gmail.com</a></li>
            </ul>
        </div>
    </div>
    
</footer>
 <!-- Column 1 -->
        <div style="flex: 1; padding: 10px; text-align: center;">
            <ul style="list-style: none; padding: 0;">
                <li>&copy; 2024 Tecresearch. All Rights Reserved.</li>
            </ul>
        </div>
</body>
</html>
