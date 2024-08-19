package com.Servlet;

import java.io.IOException;

import com.DAO.NotesDAO;
import com.db.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class EditNotesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int noteid = Integer.parseInt(request.getParameter("noteid"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		NotesDAO dao = new NotesDAO(DBConnect.getConnection());
		boolean status = dao.noteUpdate(noteid, title, content);
		HttpSession session = request.getSession();
		if(status) {
			session.setAttribute("update-mgs", "updated Successfully");
			response.sendRedirect("showNotes.jsp");
		} else {
			System.out.print("failed");
		}
	}

}
