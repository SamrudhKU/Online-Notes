package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.User.UserDetails;

public class UserDAO {

	private Connection connection;

	public UserDAO(Connection connection) {
		super();
		this.connection = connection;
	}

	public boolean addUser(UserDetails ud) {

		String query = "insert into user (fullName, email, password, phoneNumber)values(?,?,?,?)";

		try {
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setString(1, ud.getName());
			ps.setString(2, ud.getEmail());
			ps.setString(3, ud.getPassword());
			ps.setString(3, ud.getPhoneNumber());
			int increment = ps.executeUpdate();

			if (increment == 1) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	
	public UserDetails loginUser(UserDetails ud) {
		
		UserDetails user=null;
		String query = "select * from user where email =? and password=?";

		try {
			PreparedStatement ps = connection.prepareStatement(query);

			ps.setString(1, ud.getEmail());
			ps.setString(2, ud.getPassword());

			ResultSet rs = ps.executeQuery();
			
		
			if(rs.next()) {
				user = new UserDetails();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("fullName"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setPhoneNumber("phoneNumber");
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return user;
	}

}
