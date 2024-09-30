<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TechBlog</title>
    <link rel="stylesheet" href="css/index.css">
    
</head>
<body>
 <%@ include file="header.jsp" %>
    <div class="container">
        <div class="welcome-section">
            <h1>Welcome to TechBlog</h1>
            <p>Your daily source of tech news and articles</p>
        </div>

        <h2>Latest Posts</h2>
        <div class="posts">
            <div class="post-card">
                <h3>Post Title 1</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sit amet accumsan tortor...</p>
                <a href="#" class="read-more">Read More</a>
            </div>
            <div class="post-card">
                <h3>Post Title 2</h3>
                <p>Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vestibulum ac diam sit amet...</p>
                <a href="#" class="read-more">Read More</a>
            </div>
            <div class="post-card">
                <h3>Post Title 3</h3>
                <p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Proin eget tortor risus...</p>
                <a href="#" class="read-more">Read More</a>
            </div>
        </div>
    </div>

   <%@ include file="footer.jsp" %>

</body>
</html>