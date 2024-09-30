package com.tech.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Timestamp;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class EditProfileServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		out.println("Edit");
		
		HttpSession s =req.getSession();
		User user=(User)s.getAttribute("currentuser");
		out.println("Edit1d");
		user.setName(req.getParameter("username")); 
		out.println("Edit1d");
		user.setEmail(req.getParameter("email"));
		user.setPassword(req.getParameter("password"));
		user.setGender(req.getParameter("gender"));
		user.setAbout(req.getParameter("about"));
		
		out.println("Edit1");
		UserDao dao =new UserDao(ConnectionProvider.getConnection());
		out.println("Edit2");
		if(dao.updateUser(user)) {
			out.println("Profile updated"+user.toString());
			resp.sendRedirect("profile.jsp");
		}else {
			out.println("Profile not updated");
		}
	}




}
