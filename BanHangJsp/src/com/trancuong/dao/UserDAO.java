package com.trancuong.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.trancuong.model.User;

public class UserDAO {

	public List<User> getAllUser(){
		List<User> users = new ArrayList<User>();
		Connection connection = JdbcConnection.getJdbcConnection();
		String sql = "SELECT * FROM USER";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				User user = new User();
				user.setId(resultSet.getInt("ID"));
				user.setName(resultSet.getString("NAME"));
				user.setPhone(resultSet.getString("PHONE"));
				user.setUsername(resultSet.getString("USERNAME"));
				user.setPassword(resultSet.getString("PASSWORD"));
				user.setAbout(resultSet.getString("ABOUT"));
				user.setRole(resultSet.getString("ROLE"));
				user.setFavourites(resultSet.getString("FAVOURITES"));
				users.add(user);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return users;
	}
	
	public User getUserById(int id) {
		Connection connection = JdbcConnection.getJdbcConnection();
		String sql = "SELECT (ID, NAME, PHONE, USERNAME, PASSWORD, ABOUT, ROLE, FAVOURITES) FROM USER WHERE ID = ?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				User user = new User();
				user.setId(resultSet.getInt("ID"));
				user.setName(resultSet.getString("NAME"));
				user.setPhone(resultSet.getString("PHONE"));
				user.setUsername(resultSet.getString("USERNAME"));
				user.setPassword(resultSet.getString("PASSWORD"));
				user.setAbout(resultSet.getString("ABOUT"));
				user.setRole(resultSet.getString("ROLE"));
				user.setFavourites(resultSet.getString("FAVOURITES"));
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public void addUser(User user) { //ở đây có User user nên không cần khởi tạo như hai thằng trước
		Connection connection = JdbcConnection.getJdbcConnection();
		String sql = "INSERT INTO USER (NAME, PHONE, USERNAME, PASSWORD, ABOUT, ROLE, FAVOURITES) VALUES (?, ?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user.getName());
			preparedStatement.setString(2, user.getPhone());
			preparedStatement.setString(3, user.getUsername());
			preparedStatement.setString(4, user.getPassword());
			preparedStatement.setString(5, user.getAbout());
			preparedStatement.setString(6, user.getRole());
			preparedStatement.setString(7, user.getFavourites());
			int rs = preparedStatement.executeUpdate();
			System.out.println(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void updateUser(User user) {
		Connection connection = JdbcConnection.getJdbcConnection();
		String sql = "UPDATE USER SET NAME = ?, PHONE = ?, USERNAME = ?, PASSWORD = ?, ABOUT = ?, ROLE = ?, FAVOURITES = ? WHERE ID = ?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user.getName());
			preparedStatement.setString(2, user.getPhone());
			preparedStatement.setString(3, user.getUsername());
			preparedStatement.setString(4, user.getPassword());
			preparedStatement.setString(5, user.getAbout());
			preparedStatement.setString(6, user.getRole());
			preparedStatement.setString(7, user.getFavourites());
			preparedStatement.setInt(8, user.getId());
			int rs = preparedStatement.executeUpdate();
			System.out.println(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void deleteUser(int id) {
		Connection connection = JdbcConnection.getJdbcConnection();
		String sql = "DELETE FROM USER WHERE ID = ?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			int rs = preparedStatement.executeUpdate();
			System.out.println(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
