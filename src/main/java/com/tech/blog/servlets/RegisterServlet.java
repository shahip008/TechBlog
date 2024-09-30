package com.tech.blog.servlets;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.sql.Connection;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2 MB
                 maxFileSize = 1024 * 1024 * 10,      // 10 MB
                 maxRequestSize = 1024 * 1024 * 50)   // 50 MB
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
        String check =req.getParameter("agree");
        if(check!=null) {
        	String username=req.getParameter("username");
        	String email=req.getParameter("email");
        	String password=req.getParameter("password");
        	String gender=req.getParameter("gender");
        	String about=req.getParameter("about");
        	
        	// Handle file upload
            Part filePart = req.getPart("profile_pic"); // Retrieves <input type="file" name="profile_pic">
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
            
            InputStream fileContent = filePart.getInputStream();
        	User user = new User(username,email,password,gender,about);
        	UserDao dao =new UserDao(ConnectionProvider.getConnection());
        	if(dao.saveUser(user,filePart)) {
        		out.println("Done");
        		resp.sendRedirect("login.jsp");
        	}else {
        		out.println("error");
        	}
        	
        }else {
        	 out.println("T&C not accepted");
        }
       
	}

	
}
