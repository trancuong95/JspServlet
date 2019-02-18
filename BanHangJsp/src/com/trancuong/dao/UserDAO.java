package com.trancuong.dao;

import java.util.List;

import com.trancuong.model.User;

public interface UserDAO {

	public List<User> getAllUser();
	
	public User getUserById(int id);
	
	public void addUser(User user);
	
	public void updateUser(User user);
	
	public void deleteUser(int id);
}
