package com.trancuong.service;

import java.util.List;

import com.trancuong.dao.UserDAO;
import com.trancuong.model.User;

//PACKAGE DAO CHỈ CHỨA CÁC CLASS LÀM VIỆC TRỰC TIẾP VỚI CƠ SỞ DỮ LIỆU. KHÔNG THỰC THI LOGIC NÀO CẢ
//PACKAGE NÀY CHỨA CÁC CLASS TRUNG GIAN ĐỂ KẾT NỐI GIỮA CÁC VIEW (VIEW Ở ĐÂY LÀ FILE JSP, VÀ FILE DAO KIA) . TẤT CẢ LOGIC THỰC THI TRONG PACKAGE SERVICE NÀY, THỰC HIỆN TẤT CẢ CÁC LOGIC NHƯ CHECK ĐIỀU KIỆN
// USER SERVICE TẠO CÁC HÀM. GETALLUSER, TẠO CONSTRUCTOR VÀ NEW ĐỐI TƯỢNG USERDAO ĐỂ SỬ DỤNG, DÙNG ĐỐI TƯỢNG USERDAO ĐỂ 
public class UserService{

	private UserDAO userDAO;

	
	
	public UserService() {
		userDAO = new UserDAO();
	}

	public List<User> getAllUser(){
		return userDAO.getAllUser();
	}
	
	public User getUserById(int id) {
		return userDAO.getUserById(id);
	}
	
	public void addUser(User user) {
		userDAO.addUser(user);
	}
	
	public void updateUser(User user) {
		userDAO.updateUser(user);
	}
	
	public void deleteUser(int id) {
		userDAO.deleteUser(id);
	}
}
