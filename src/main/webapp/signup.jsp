<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up Page</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/login_signup.css">
    
     <!-- Include jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Include Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
     
</head>
<body>
 <%@ include file="header.jsp" %>
    <div class="container">
        <h2>Sign Up</h2>
        <form id="reg_form" action="RegisterServlet" method="post" enctype="multipart/form-data">
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
    		<label for="profile_pic">Profile Picture:</label>
    		<input type="file" id="profile_pic" name="profile_pic" accept="image/*">
			</div>
            <div class="form-group">
                <input type="checkbox" id="agree" name="agree" required value="checked">
                <label for="agree">Agree to Terms & Conditions</label>
            </div>
             
            <div class="form-group">
                <button type="submit">
                    <i class="fa-solid fa-arrows-rotate"></i> Sign Up
                </button>
            </div>
        </form>
        <p>Already have an account? <a href="login.jsp">Login</a></p>
    </div>
    <%@ include file="footer.jsp" %>
    
    

    
    
    <script>
    // Example custom JavaScript code
    $(document).ready(function(){
        // Your JavaScript code here
        console.log("loaded...");
        $('#reg_form').on('submit', function(event){
            event.preventDefault();
            let form = new FormData(this);
            //send register servlet:
            $.ajax({
                url: "RegisterServlet",
                type: 'POST',
                data: form,
                success: function(response) {
                    // Handle successful response
                    //console.log("AJAX request succeeded:", response);
                    
                    
                    
                    
                },
                error: function(xhr, status, error) {
                    // Handle error
                    console.error("AJAX request failed:", xhr.responseText);
                },
                processData: false,
                contentType: false
            });
        });
    });
</script>
    
</body>
</html>
