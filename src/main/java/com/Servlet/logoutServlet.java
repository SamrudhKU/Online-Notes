package com.Servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class logoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("userDetails");
		response.setHeader("Cache-Control", "no-cache, no-Store, must-revalidate");

		
		HttpSession session1 = request.getSession();
		session1.setAttribute("logout-mgs", "Successfully loged-out");
		response.sendRedirect("login.jsp");
		
		
	}

	

}
