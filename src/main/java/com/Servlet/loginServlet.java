package com.Servlet;

import java.io.IOException;

import com.DAO.UserDAO;
import com.User.UserDetails;
import com.db.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		UserDetails ud = new UserDetails();
		ud.setEmail(email);
		ud.setPassword(password);
		
		UserDAO dao = new UserDAO(DBConnect.getConnection());
		UserDetails user = dao.loginUser(ud);
		
		HttpSession session = request.getSession();

		if(user!=null) {
			session.setAttribute("userDetails", user);
			response.sendRedirect("home.jsp");
		} else { 
			session.setAttribute("login-failed", "Invalid userName / Password");
			response.sendRedirect("login.jsp");
		}
		
	}

}
