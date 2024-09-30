<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }
        .error-container {
            text-align: center;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .error-container img {
            width: 100%;
            max-width: 400px;
            height: auto;
        }
        .error-container h1 {
            font-size: 4rem;
            margin: 20px 0 10px;
        }
        .error-container h2 {
            font-size: 2rem;
            margin: 10px 0;
        }
        .error-container p {
            font-size: 1.2rem;
            margin: 20px 0;
        }
        .error-container a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .error-container a:hover {
            background-color: #0056b3;
        }
        @media (max-width: 768px) {
            .error-container h1 {
                font-size: 3rem;
            }
            .error-container h2 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="error-container">
        <img src="images/error.jpg" alt="Error Image">
        <h1><i class="fas fa-exclamation-triangle"></i> 404</h1>
        <h2>Page Not Found</h2>
        <p>Oops! The page you are looking for does not exist.</p>
        <p><strong>Error Details:</strong></p>
    	<p>${exception}</p>
    	 
        <a href="index.jsp">Go to Home</a>
    </div>
</body>
</html>
