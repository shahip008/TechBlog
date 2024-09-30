<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/login_signup.css">
    <style>
    .button-container {
    display: flex;
    flex-direction: row-reverse; /* Reverses the order of buttons */
}

.small-button {
    margin-left: 10px; /* Adjust as needed for spacing */
}
    
    </style>

</head>
<body>
<%@ include file="header.jsp" %>
    <div class="container">
        <h2>Edit Profile</h2>
        <form id="reg_form" action="editProfileServlet" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="email">Email Address:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="gender">Gender:</label>
                <input type="radio" id="male" name="gender" value="male" checked>
                <label for="male">Male</label>
                <input type="radio" id="female" name="gender" value="female">
                <label for="female">Female</label>
            </div>
            <div class="form-group">
                <label for="about">About Yourself:</label>
                <textarea id="about" name="about"></textarea>
            </div>
            <div class="form-group">
                <input type="checkbox" id="agree" name="agree" required value="checked">
                <label for="agree">Do you want to update profile</label>
            </div>
            <div class="form-group">
            <div class="button-container">
    		<button type="reset" class="small-button">
       		 Reset
    		</button>
    		<button type="button" class="small-button" onclick="goBack()">
        	Back
    		</button>
			</div>
           	</div>
            
            <div class="form-group">
            <button type="submit">
                <i class="fa-solid fa-arrows-rotate"></i> Update
            </button>
            
        </div>
        </div>
            
        </form>
        
    </div>
    <%@ include file="footer.jsp" %>
    
</body>
</html>