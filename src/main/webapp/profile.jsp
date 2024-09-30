<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp" %>
<%@page import=" com.tech.blog.entities.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
   <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/profile.css">
    <style>
    .profile-buttons {
    display: flex;
    justify-content: space-between;
    margin-top: 20px;
}

.button-link {
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    background-color: #007bff;
    color: white;
    text-decoration: none;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s;
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
<div class="profile-container">
        <div class="profile-photo">
            
             <img src="<%= user.getProfilePic() %>" alt="Profile Photo">
        </div>
        <div class="profile-details">
            <div class="detail"><strong>ID:</strong> <span id="profile-id"><%=user.getId() %></span></div>
            <div class="detail"><strong>User Name:</strong> <span id="profile-id"><%=user.getName() %></span></div>
            <div class="detail"><strong>Email:</strong> <span id="profile-email"><%=user.getEmail() %></span></div>
            <div class="detail"><strong>Password:</strong> <span id="profile-password"><%=user.getPassword() %></span></div>
            <div class="detail"><strong>Gender:</strong> <span id="profile-gender"><%=user.getGender() %></span></div>
            <div class="detail"><strong>Status:</strong> <span id="profile-status"><%=user.getAbout() %></span></div>
            <div class="detail"><strong>Registered on:</strong> <span id="profile-date"><%=user.getDateTime() %></span></div>
        </div>
        
        
        <div class="profile-buttons">
            <a href="editProfile.jsp" id="edit-button" class="button-link">Edit</a>
            <a href="logoutServlet" id="close-button" class="button-link">Logout</a>
        </div>
    </div>
 <%@ include file="footer.jsp" %>
    <!--  <script src="js/profile.js"></script>-->
    
   



</body>
</html>