package com.Servlet;

import java.io.IOException;

import com.DAO.NotesDAO;
import com.User.UserDetails;
import com.db.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class AddNotesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		HttpSession session = request.getSession();
		UserDetails user = (UserDetails) session.getAttribute("userDetails");
		
		
		int uerId = user.getId();
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		NotesDAO dao = new NotesDAO(DBConnect.getConnection());
		boolean status = dao.AddNotes(title, content, uerId);
		
		if(status) {
			response.sendRedirect("showNotes.jsp");
			System.out.println("Successfully added");
		} else {
			System.out.println("failed");
		}

	}

}
