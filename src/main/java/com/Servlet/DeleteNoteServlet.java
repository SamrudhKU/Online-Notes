package com.Servlet;

import java.io.IOException;

import com.DAO.NotesDAO;
import com.db.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class DeleteNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("note_id"));
		
		NotesDAO Ddao = new NotesDAO(DBConnect.getConnection());
		boolean status = Ddao.deleteNote(id);
		
		HttpSession session = request.getSession();
		
		if(status) {
			session.setAttribute("delete-msg", "your note is Deleted.");
			response.sendRedirect("showNotes.jsp");
		} else {
			session.setAttribute("delete-msg", "Failed to delete.");
			response.sendRedirect("showNotes.jsp");
		}
		
	}

}
