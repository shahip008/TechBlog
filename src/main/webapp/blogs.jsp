<%@page import="java.util.ArrayList"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Colorful & Attractive Page</title>
  <!-- Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
   <link rel="stylesheet" href="css/index.css">
  <!-- Custom CSS -->
  <style>
    /* Side Navbar Styles */
    .side-navbar {
      position: fixed;
      top: 0;
      left: 0;
      width: 200px;
      height: 100%;
      background-color: #87CEEB; /* Sky blue */
      overflow-y: auto; /* Enable vertical scrollbar */
      padding-top: 50px; /* Space for the navbar */
    }
    .category-link {
      color: #fff;
      transition: color 0.3s ease;
    }
    .category-link:hover {
      color: #000; /* Black on hover */
      text-decoration: none;
    }
    /* Main Content Styles */
    .main-content {
      margin-left: 200px; /* Width of side navbar */
      padding: 20px;
    }
    .card {
      background-color: #fff; /* White */
      border: none;
      border-radius: 15px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }
    .card:hover {
      transform: translateY(-5px);
      box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
    }
    .card-img-top {
      border-top-left-radius: 15px;
      border-top-right-radius: 15px;
      height: 200px;
      object-fit: cover;
    }
    .card-body {
      padding: 20px;
    }
    .card-title {
      font-weight: bold;
      color: #333;
    }
    .card-text {
      color: #666;
    }
  </style>
</head>
<body>
<%@ include file="header.jsp" %>
  <!-- Side Navbar 1 -->
  <nav class="side-navbar">
    <div class="sidebar-sticky">
      <h3 class="mt-4 mb-4 text-center"><i class="fas fa-tags"></i> Categories 1</h3>
      <ul class="nav flex-column">
        <li class="nav-item">
          <a class="nav-link category-link" href="#"><i class="fas fa-globe mr-2"></i>All Posts</a>
        </li>
        <li class="nav-item">
          <a class="nav-link category-link" href="#"><i class="fab fa-java mr-2"></i>Java</a>
        </li>
        <li class="nav-item">
          <a class="nav-link category-link" href="#"><i class="fab fa-python mr-2"></i>Python</a>
        </li>
        <li class="nav-item">
          <a class="nav-link category-link" href="#"><i class="fas fa-database mr-2"></i>Database</a>
        </li>
      </ul>
    </div>
  </nav>
  <!-- Main Content -->
  <main role="main" class="main-content">
    <h2 class="mt-4 mb-4 text-center"><i class="fas fa-book"></i> Posts</h2>
    <div class="container">
      <div class="row">
        <!-- Sample Card - Java Post -->
        <div class="col-md-4 mb-4">
          <div class="card">
            <img src="https://via.placeholder.com/300" class="card-img-top" alt="Java Post">
            <div class="card-body">
              <h5 class="card-title">Java Post</h5>
              <p class="card-text">This is a sample Java post. Click to view details.</p>
              <a href="#" class="btn btn-primary stretched-link">View Details</a>
            </div>
          </div>
        </div>
        <!-- Sample Card - Python Post -->
        <div class="col-md-4 mb-4">
          <div class="card">
            <img src="https://via.placeholder.com/300" class="card-img-top" alt="Python Post">
            <div class="card-body">
              <h5 class="card-title">Python Post</h5>
              <p class="card-text">This is a sample Python post. Click to view details.</p>
              <a href="#" class="btn btn-primary stretched-link">View Details</a>
            </div>
          </div>
        </div>
        <!-- Sample Card - Database Post -->
        <div class="col-md-4 mb-4">
          <div class="card">
            <img src="https://via.placeholder.com/300" class="card-img-top" alt="Database Post">
            <div class="card-body">
              <h5 class="card-title">Database Post</h5>
              <p class="card-text">This is a sample Database post. Click to view details.</p>
              <a href="#" class="btn btn-primary stretched-link">View Details</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
</body>
</html>

          