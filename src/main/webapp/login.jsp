<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.tech.blog.entities.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/login_signup.css">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<style>
	
	 .container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
	.alert-container {
            display: flex;
            justify-content: center;
            width: 100%;
        }

        .alert {
            width: 100%;
        }
	
	</style>

</head>
<body>
 <%@ include file="header.jsp" %>
    <div class="container">
        <h2>Login</h2>
         
        
        <form action="loginServlet" method="post">
        
        <%
        Message m =(Message) session.getAttribute("msg");
        if(m!=null){
        %><div class="alert-container">
        	<div class="alert <%=m.getCssClass() %>" role="alert">
        	  <%= m.getContent() %>
        	</div>
        	</div>
        <%
        session.removeAttribute("msg");
        }
        %>
            <div class="form-group">
                <label for="email">Email Address:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <input type="checkbox" id="remember" name="remember">
                <label for="remember">Remember Me</label>
            </div>
            <div class="form-group">
                <button type="submit">Login</button>
            </div>
        </form>
        <p>Don't have an account? <a href="signup.jsp">Sign Up</a></p>
    </div>
    <%@ include file="footer.jsp" %>
    
</body>
</html>
