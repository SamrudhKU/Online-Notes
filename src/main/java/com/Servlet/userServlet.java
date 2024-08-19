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

public class userServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public userServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phoneNumber = request.getParameter("phoneNumber");
		
		UserDetails ud = new UserDetails();
		ud.setName(name);
		ud.setEmail(email);
		ud.setPassword(password);
		ud.setPhoneNumber(phoneNumber);
		
		UserDAO dao = new UserDAO(DBConnect.getConnection());
		boolean addUserStatus = dao.addUser(ud);
		
		HttpSession session = request.getSession();
		if(addUserStatus) {
			
			session.setAttribute("reg-msg", "Successfully regerested");
			response.sendRedirect("register.jsp");
		} else {
			session.setAttribute("reg-msg", "regestration faild");
			response.sendRedirect("register.jsp");

		}
	
	}

}
