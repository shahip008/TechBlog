package com.tech.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		UserDao dao= new UserDao(ConnectionProvider.getConnection());
		User u= dao.getuserByEmail(email, password);
		if(u==null) {
			out.println("invalid details try again");
			Message msg= new Message("Invalid detail ! try with another", "error", "alert-danger");
			HttpSession s = req.getSession();
			s.setAttribute("msg", msg);
			resp.sendRedirect("login.jsp");
		}else {
			out.println("loged in");
			
			HttpSession s = req.getSession();
			s.setAttribute("currentuser", u);
			resp.sendRedirect("profile.jsp");
		}
	}

}
