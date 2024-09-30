<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page errorPage="error.jsp" %>
<%@page import=" com.tech.blog.entities.*" %>
<%
// Declare and initialize the user variable at the top of the file
User user = (User) session.getAttribute("currentuser");


%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Website</title>
    <!-- Add your CSS links here -->
</head>
<body>
    <header>
        <!-- Your header content goes here -->
        <nav>
        <div class="logo">TechBlog</div>
        <div class="nav-links">
            <a href="index.jsp">Home</a>
             <% if (user != null) { %>
             <a href="post.jsp">Do Post</a>
              <% } %>
            <a href="blogs.jsp">Blogs</a>
            <a href="#">Contact</a>
            <a href="#">Search</a>
            
            <% if (user == null) { %>
            <a href="login.jsp">Login</a>
	        <% } else { %>
	            <a href="profile.jsp"><%= user.getName() %></a>
	            <a href="logoutServlet">Logout</a>
	        <% } %>
	        

            
        </div>
    </nav>
    </header>
