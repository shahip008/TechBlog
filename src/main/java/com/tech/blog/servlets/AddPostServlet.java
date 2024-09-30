package com.tech.blog.servlets;

import java.io.IOException;
import java.io.*;
import java.io.PrintWriter;

import org.apache.tomcat.util.http.fileupload.FileUtils;

import com.tech.blog.dao.PostDao;
import com.tech.blog.entities.Post;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.helper.Helper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
@MultipartConfig
public class AddPostServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		out.println("Edit1");

		 String pst_title = req.getParameter("title");
	        out.println(pst_title);
	        String pst_content = req.getParameter("content");
	        String pst_code = req.getParameter("code");
	        
	        String categoryParam = req.getParameter("category");
	        int cat_id = 0;
	        if (categoryParam != null && !categoryParam.isEmpty()) {
	            try {
	                cat_id = Integer.parseInt(categoryParam);
	            } catch (NumberFormatException e) {
	                out.println("Invalid category ID format.");
	                return;
	            }
	        } else {
	            out.println("Category ID is missing.");
	            return;
	        }

	        HttpSession session = req.getSession();
	        User u = (User) session.getAttribute("currentuser");
	        if (u == null) {
	            out.println("User not logged in.");
	            return;
	        }

	        Part part = req.getPart("pic");

	        // Debugging output
	        out.println("Title: " + pst_title);
	        out.println("<br>");
	        out.println("Content: " + pst_content);
	        out.println("<br>");
	        out.println("Code: " + pst_code);
	        out.println("<br>");
	        out.println("Category ID: " + cat_id);
	        out.println("<br>");
	        out.println("User ID: " + u.getId());
	        out.println("<br>");
	        out.println("File Name: " + part.getSubmittedFileName());

	        // Assuming further logic for storing the post in the database
	         PostDao postDao = new PostDao(ConnectionProvider.getConnection());
	         boolean isSaved = postDao.savePost(new Post(pst_title, pst_content, pst_code, part.getSubmittedFileName(), cat_id, u.getId() ));
	         if (isSaved) {
	        	 
	        	 // Define the path where the file will be saved
	             String filePath = getServletContext().getRealPath("/") + "blog_pics" + File.separator + part.getSubmittedFileName();
out.println("path : "+filePath);

	             // Save the file
	             InputStream fileContent = part.getInputStream();
	             boolean isFileSaved = Helper.saveFile(fileContent, filePath);
	        	 if(isFileSaved) {
	        		 out.println("post image added successfully!"); 
	        	 }else 
	        	 {
	        		 out.println("Failed to add post images.");
	        	 }
	             out.println("Post added successfully!");
	         } else {
	             out.println("Failed to add post.");
	         }
		
//		pst_pic
//		int cat_id
//		int login_id
	}

	
}
