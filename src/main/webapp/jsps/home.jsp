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
        font-family: Arial, sans-serif;
        background-color: #f1f5f9;
        margin: 0;
        padding: 0;
    }
    h1, h3 {
        color: #1e293b;
    }
    .header, .footer {
        background-color: #0f172a;
        color: white;
        padding: 20px;
        text-align: center;
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
</style>
</head>
<body>

<div class="header">
    <h1>Welcome to KK AWS New Batch</h1>
    <h2>Starting on 25th May | 06:45 AM – 9:45 AM</h2>
    <p>Reach out for registration and queries!</p>
</div>

<div class="auth-container">
    <!-- Sign In -->
    <div class="auth-box">
        <h3>Sign In</h3>
        <form action="signin.jsp" method="post">
            <input type="email" name="email" placeholder="Email" required>
