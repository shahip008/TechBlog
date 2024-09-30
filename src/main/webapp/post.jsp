<%@page import="java.util.ArrayList"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>



<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Post Creation</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/index.css">
  <!-- Custom styles -->
    <style>
        body {
            background-color: #f8f9fa;
            padding-top: 50px;
             margin: 0;
            padding: 0;
            padding-bottom: 60px; /* Adjust the value based on the height of your footer */
       
        }
        .content {
         padding-top: 20px;
    margin-bottom: 20px; /* Adjust the value based on the height of your footer */
}
        
        .container {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }
        .form-control:focus {
            border-color: #80bdff;
            box-shadow: none;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0069d9;
            border-color: #0062cc;
        }
    </style>

</head>
<body>
 <%@ include file="header.jsp" %>
 <%
if(user==null){
	response.sendRedirect("login.jsp");
}
%>
 <div class="content">
 <div class="container">
        <h2 class="mb-4">Create a New Post</h2>
        <form action="addPostServlet" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="title">Title:</label>
                <input type="text" class="form-control" id="title" name="title" required>
            </div>
            <div class="form-group">
    <label for="category">Category:</label>
    <select class="form-control" id="category" name="category" required>
        <option value="">Select a category</option>
        <%
        PostDao pstd = new PostDao(ConnectionProvider.getConnection());
        ArrayList<Category> list =pstd.getAllCategory();
        System.out.println("ps post list:"+list);
      
        for(Category c:list){
        	%>
        	<option value="<%= c.getCat_id() %>"><%= c.getCat_name() %></option>
        	
        	<%
        }
        %>
        
    </select>
</div>
            
            <div class="form-group">
                <label for="content">Content:</label>
                <textarea class="form-control" id="content" name="content" rows="5"></textarea>
            </div>
            <div class="form-group">
                <label for="code">Code:</label>
                <textarea class="form-control" id="code" name="code" rows="5"></textarea>
            </div>
            <div class="form-group">
                <label for="pic">Picture:</label>
                <input type="file" class="form-control-file" id="pic" name="pic">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    </div>
    <%@ include file="footer.jsp" %>
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</body>
</html>