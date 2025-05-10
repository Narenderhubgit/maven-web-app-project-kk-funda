<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>KK FUNDA Home Page hai</title>
    <link href="images/kkfunda.jpg" rel="icon">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #e0f7fa, #e8f5e9);
            font-family: 'Segoe UI', sans-serif;
        }
        .main-header {
            color: #004d40;
            text-shadow: 1px 1px 2px #ccc;
        }
        .devops-tools li {
            background-color: #ffffff;
        }
        .table th {
            background-color: #00796b;
            color: white;
        }
        .footer {
            background-color: #004d40;
        }
    </style>
</head>
<body>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">KK FUNDA</a>
    <div class="collapse navbar-collapse">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item"><a class="nav-link active" href="#">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="services/employee/getEmployeeDetails">Services</a></li>
        <li class="nav-item"><a class="nav-link" href="registration.jsp">Register</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container mt-4">
    <!-- Replaced marquee with non-scrolling styled div -->
    <div style="color: darkgreen; font-size: 24px; font-weight: bold; text-align: center;">
        Welcome to KK AWS - DevOps Training and Services Platform Hello everyone dev
    </div>

    <div class="text-center">
        <h1 class="main-header">KK FUNDA</h1>
        <hr>
    </div>

    <!-- Server & Client Details -->
    <div class="mt-4">
        <h4 style="color: #00695c;">Server & Client Information</h4>
        <table class="table table-bordered table-striped">
            <tbody>
            <%
                String ip = "";
                InetAddress inetAddress = InetAddress.getLocalHost();
                ip = inetAddress.getHostAddress();
            %>
            <tr><th>Server Host Name</th><td><%= inetAddress.getHostName() %></td></tr>
            <tr><th>Server IP Address</th><td><%= ip %></td></tr>
            <tr><th>Client IP Address</th><td><%= request.getRemoteAddr() %></td></tr>
            <tr><th>Client Host Name</th><td><%= request.getRemoteHost() %></td></tr>
            </tbody>
        </table>
    </div>

    <!-- DevOps Tools Section -->
    <div class="container mt-5">
        <h3 class="text-center mb-4" style="color: #004d40;">Top DevOps Tools</h3>
        <ul class="list-group devops-tools">
            <li class="list-group-item"><strong>1. Git</strong> – A distributed version control system.<br>Git helps developers collaborate and track changes in source code.</li>
            <li class="list-group-item"><strong>2. Jenkins</strong> – An automation server for CI/CD.<br>Jenkins automates build, test, and deployment workflows.</li>
            <li class="list-group-item"><strong>3. Docker</strong> – Containerization platform.<br>Docker packages applications with dependencies for consistent environments.</li>
            <li class="list-group-item"><strong>4. Kubernetes</strong> – Container orchestration system.<br>Kubernetes automates deployment, scaling, and operations of containers.</li>
            <li class="list-group-item"><strong>5. Ansible</strong> – Configuration management tool.<br>Ansible simplifies automation of cloud provisioning and app deployment.</li>
            <li class="list-group-item"><strong>6. Terraform</strong> – Infrastructure as Code (IaC
