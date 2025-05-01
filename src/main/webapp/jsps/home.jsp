<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>KK FUNDA Home Page</title>
    <link href="images/kkfunda.jpg" rel="icon">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
    <div class="text-center">
        <h1>Welcome to KK AWS</h1>
        <h2>KK FUNDA</h2>
        <hr>
    </div>

    <!-- Server & Client Details -->
    <div class="mt-4">
        <h4>Server & Client Information</h4>
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
        <h3 class="text-center mb-4">Top DevOps Tools</h3>
        <ul class="list-group">
            <li class="list-group-item">
                <strong>1. Git</strong> – A distributed version control system.<br>
                Git helps developers collaborate and track changes in source code during software development.
            </li>
            <li class="list-group-item">
                <strong>2. Jenkins</strong> – An automation server for CI/CD.<br>
                Jenkins allows you to automate building, testing, and deploying applications.
            </li>
            <li class="list-group-item">
                <strong>3. Docker</strong> – Containerization platform.<br>
                Docker packages applications with dependencies into containers for easy deployment.
            </li>
            <li class="list-group-item">
                <strong>4. Kubernetes</strong> – Container orchestration system.<br>
                Kubernetes automates container deployment, scaling, and management.
            </li>
            <li class="list-group-item">
                <strong>5. Ansible</strong> – Configuration management tool.<br>
                Ansible automates IT processes such as configuration, provisioning, and application deployment.
            </li>
            <li class="list-group-item">
                <strong>6. Terraform</strong> – Infrastructure as Code (IaC) tool.<br>
                Terraform enables users to define and provision infrastructure using a declarative configuration language.
            </li>
            <li class="list-group-item">
                <strong>7. Prometheus</strong> – Monitoring and alerting toolkit.<br>
                Prometheus collects and stores metrics data and provides powerful querying and alerting features.
            </li>
            <li class="list-group-item">
                <strong>8. Grafana</strong> – Visualization and dashboard tool.<br>
                Grafana integrates with data sources like Prometheus to create interactive dashboards.
            </li>
            <li class="list-group-item">
                <strong>9. ELK Stack (Elasticsearch, Logstash, Kibana)</strong> – Log analysis stack.<br>
                ELK Stack helps in collecting, analyzing, and visualizing logs in real time.
            </li>
            <li class="list-group-item">
                <strong>10. AWS CloudFormation</strong> – IaC service on AWS.<br>
                CloudFormation helps you model and provision AWS infrastructure using JSON/YAML templates.
            </li>
        </ul>
    </div>

    <!-- Contact Section -->
    <div class="text-center mt-5">
        <img src="images/kkfunda.jpg" alt="KK FUNDA" width="100"><br>
        <strong>
            KK FUNDA, Martha Halli, Bangalore<br>
            +91-9676831734, +91-9676831734<br>
            <a href="mailto:kkeducationblr@gmail.com">kkeducationblr@gmail.com</a><br>
            <a href="mailto:kkeducation@gmail.com">Mail to KK FUNDA</a>
        </strong>
    </div>

    <!-- Services -->
    <div class="text-center mt-4">
        <p>Service: <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>
    </div>
</div>

<!-- Footer -->
<footer class="bg-dark text-white text-center p-3 mt-5">
    KK FUNDA Training & Development Center<br>
    <small>&copy; 2024 by <a href="https://google.com" class="text-info">KK FUNDA</a></small>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
