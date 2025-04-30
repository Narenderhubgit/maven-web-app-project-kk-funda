<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KK FUNDA Home Page</title>
<link href="images/kkfunda.jpg" rel="icon">
<style>
    body {
        font-family: 'Segoe UI', sans-serif;
        background-color: #f1f5f9;
        margin: 0;
        padding: 0;
    }
    .header {
        background-color: #0f172a;
        color: white;
        padding: 20px;
        text-align: center;
        position: relative;
    }
    .header img.logo {
        position: absolute;
        top: 10px;
        right: 20px;
        width: 100px;
        border-radius: 10px;
    }
    .signin-link {
        position: absolute;
        top: 20px;
        left: 20px;
    }
    .signin-link a {
        text-decoration: none;
        background-color: #3b82f6;
        color: white;
        padding: 10px 20px;
        border-radius: 5px;
        font-weight: bold;
    }
    .signin-link a:hover {
        background-color: #2563eb;
    }
    .auth-container {
        display: flex;
        justify-content: center;
        gap: 50px;
        margin-top: 30px;
    }
    .auth-box {
        background-color: white;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.2);
        padding: 20px;
        width: 300px;
    }
    input[type="text"], input[type="password"], input[type="email"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #94a3b8;
        border-radius: 5px;
    }
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #0ea5e9;
        color: white;
        border: none;
        border-radius: 5px;
        font-weight: bold;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #0284c7;
    }
    .cta-register {
        text-align: center;
        margin: 40px 0;
    }
    .cta-register a {
        background-color: #10b981;
        color: white;
        padding: 15px 25px;
        font-size: 18px;
        border-radius: 8px;
        text-decoration: none;
        font-weight: bold;
    }
    .cta-register a:hover {
        background-color: #059669;
    }
    .steps {
        max-width: 800px;
        margin: 40px auto;
        background-color: #ffffff;
        border-left: 6px solid #3b82f6;
        padding: 20px;
        border-radius: 10px;
    }
    .steps h2 {
        color: #0f172a;
        margin-bottom: 20px;
    }
    .step {
        background-color: #e0f2fe;
        padding: 15px;
        margin-bottom: 15px;
        border-left: 4px solid #0ea5e9;
        border-radius: 5px;
    }
</style>
</head>
<body>

<div class="header">
    <img src="images/kkfunda.jpg" alt="KK FUNDA Logo" class="logo">
    <div class="signin-link">
        <a href="signin.jsp">🔑 Sign In</a>
    </div>
    <h1>Welcome to KK AWS New Batch</h1>
    <h2>Starting on 25th May | 06:45 AM – 9:45 AM</h2>
    <p>Reach out for registration and queries!</p>
</div>

<div class="auth-container">
    <!-- Sign Up -->
    <div class="auth-box">
        <h3>Sign Up</h3>
        <form action="signup.jsp" method="post">
            <input type="text" name="fullname" placeholder="Full Name" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" value="Register">
        </form>
    </div>
</div>

<div class="cta-register">
    <a href="signup.jsp">🎓 REGISTER NOW FOR AWS BATCH</a>
</div>

<!-- Colorful Step Section -->
<div class="steps">
    <h2>🌟 Steps to Join KK FUNDA AWS Batch</h2>
    <div class="step">✅ Step 1: Fill out the registration form with your details.</div>
    <div class="step">✅ Step 2: Receive a confirmation email with batch details.</div>
    <div class="step">✅ Step 3: Join the live session on 25th May at 6:45 AM.</div>
    <div class="step">✅ Step 4: Begin your AWS DevOps learning journey!</div>
</div>

</body>
</html>
