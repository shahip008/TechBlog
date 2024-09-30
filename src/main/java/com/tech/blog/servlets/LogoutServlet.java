package com.tech.blog.servlets;
import com.tech.blog.entities.*;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet{


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		
		HttpSession s= req.getSession();
		User u =(User) s.getAttribute("currentuser");
		if(u != null) {
			out.println(" login");
			
			Message m =new Message("Logout Sucessfully", "success", "alert-success");
			s.setAttribute("msg", m);
			s.removeAttribute("currentuser");
			resp.sendRedirect("login.jsp");
		}else {
			out.println("not login");
			resp.sendRedirect("login.jsp");
		}
		
	}

}
