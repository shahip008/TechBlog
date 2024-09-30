package com.tech.blog.dao;
import java.io.ByteArrayOutputStream;

import java.io.InputStream;
import java.sql.*;
import java.util.Base64;

import com.tech.blog.entities.User;

import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Part;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2 MB
                 maxFileSize = 1024 * 1024 * 10,      // 10 MB
                 maxRequestSize = 1024 * 1024 * 50)   // 50 MB
public class UserDao {
	private Connection con;

	public UserDao(Connection con) {
		this.con = con;
	}
	
	public boolean saveUser(User user, Part imagePart) {
		boolean f = false;
		try {
			
			String query ="insert into user(name,email,password,gender,about,profile_pic) values(?,?,?,?,?,?)";
			PreparedStatement pstmt = this.con.prepareStatement(query);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getPassword());
			pstmt.setString(4, user.getGender());
			pstmt.setString(5, user.getAbout());
			// Check if imagePart is not null and the content length is greater than 0
	        if (imagePart != null && imagePart.getSize() > 0) {
	            InputStream inputStream = imagePart.getInputStream();
	            pstmt.setBinaryStream(6, inputStream, (int) imagePart.getSize());
	        } else {
	            // If no image is provided, set profile_pic to null
	            pstmt.setNull(6, Types.BLOB);
	        }
			
			pstmt.executeUpdate();
			f=true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	public User getuserByEmail(String email, String password) {
		User user = null;
		
		try {
			String query="Select * from user where email=? and password=?";
			PreparedStatement pstmt = con.prepareStatement(query);
			System.out.println("email"+email+"password"+password+"query"+query);
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			
			ResultSet set= pstmt.executeQuery();
			System.out.println("set"+set);
			if(set.next()) {
				user = new User();
				user.setName(set.getString("name"));
				user.setId(set.getInt("id"));
				user.setEmail(set.getString("email"));
				user.setPassword(set.getString("password"));
				user.setGender(set.getString("gender"));
				user.setAbout(set.getString("about"));
				user.setDateTime(set.getTimestamp("rdate"));
				
				
				 // Retrieve and set image data
	            Blob profilePicBlob = set.getBlob("profile_pic");
	            if (profilePicBlob != null) {
	                InputStream inputStream = profilePicBlob.getBinaryStream();
	                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
	                byte[] buffer = new byte[4096];
	                int bytesRead = -1;
	                while ((bytesRead = inputStream.read(buffer)) != -1) {
	                    outputStream.write(buffer, 0, bytesRead);
	                }
	                byte[] imageBytes = outputStream.toByteArray();
	                String base64Image = Base64.getEncoder().encodeToString(imageBytes);
	                user.setProfilePic(base64Image);
	            }
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return user;
	}
	
	public boolean updateUser(User user) {
		boolean f = false;
		try {
			
			String query ="update user set name=?, email=?,password=?,gender=?,about=? where id=?";
			System.out.println("Query: " + query);
			System.out.print("Executing query: " + query);
	        System.out.print(" with values: [");
	        System.out.print(user.getName() + ", ");
	        System.out.print(user.getEmail() + ", ");
	        System.out.print(user.getPassword() + ", ");
	        System.out.print(user.getGender() + ", ");
	        System.out.print(user.getAbout() + ", ");
	        System.out.println(user.getId() + "]");
			PreparedStatement pstmt = this.con.prepareStatement(query);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getPassword());
			pstmt.setString(4, user.getGender());
			pstmt.setString(5, user.getAbout());
			pstmt.setInt(6, user.getId());
			pstmt.executeUpdate();
			System.out.println("Update executed successfully.");
			f=true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}
