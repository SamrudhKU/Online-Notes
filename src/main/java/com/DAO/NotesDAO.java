package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.User.Notes;

public class NotesDAO {
	private Connection connection;
	private PreparedStatement ps;

	public NotesDAO(Connection connection) {
		super();
		this.connection = connection;
	}

	public boolean AddNotes(String ti, String co, int ui) {
		
		String query = "insert into notes (title, content, uid) values (?,?,?)";
		
		try {
			ps = connection.prepareStatement(query);
			ps.setString(1, ti);
			ps.setString(2, co);
			ps.setInt(3, ui);
			
			int increment = ps.executeUpdate();
			if(increment>0) 
				return true;
		} catch (Exception e) {
			e.getMessage();
		}
		return false;
	}
	
	
	public List<Notes> getData(int id){
		
		List<Notes> list = new ArrayList<Notes>();
		
		Notes note = null;
		
		
		String query = "select * from notes where uid=? order by nid DESC";
		
		try {
			ps = connection.prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				note = new Notes();
				note.setNid(rs.getInt(1));
				note.setTitle(rs.getString(2));
				note.setContent(rs.getString(3));
				note.setDate(rs.getTimestamp(4));
				list.add(note);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	public Notes getDataById(int noteId) {
		String query = "select * from notes where nid=?";
		Notes note = null;
		 try {
			ps = connection.prepareStatement(query);
			ps.setInt(1,  noteId);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {		
				note = new Notes();
				note.setNid(rs.getInt(1));
				note.setTitle(rs.getString(2));
				note.setContent(rs.getString(3));
		
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 return note;	
	}
	
	
	public boolean noteUpdate(int id, String title, String content) {
		
		String query = "update notes set title=?, content=? where nid=?";
		
		try {
			ps = connection.prepareStatement(query);
			ps.setString(1,  title);
			ps.setString(2,  content);
			ps.setInt(3, id);
			int increment = ps.executeUpdate();
			if(increment>0) {
				return true;	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;	
	}
	
	
	public boolean deleteNote(int id) {
		String query = "delete from notes where nid = ?";
		try {
			ps = connection.prepareStatement(query);
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			if(i>0) 
				return true;
		} catch (Exception e) {
			e.getMessage();
		}	
		return false;	
	}
	
}
