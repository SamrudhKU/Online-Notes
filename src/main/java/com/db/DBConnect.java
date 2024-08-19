 package com.db;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnect {
	public static Connection connection;
	public static Connection getConnection() {
				
		try {
		if(connection == null) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinenotes", "root", "2002");
			
		}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
}
