package com.trancuong.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcConnection {

	public static Connection getJdbcConnection() {
		final String url = "jdbc:mysql://localhost:3306/BAN-HANG";
		final String user = "root";
		final String password = "3690";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
