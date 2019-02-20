<%@page import="com.trancuong.model.User"%>
<%@page import="com.trancuong.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String idStr = request.getParameter("id"); //ở đây phải để viết id thường, viết hoa sẽ thông báo lỗi
	UserService userService = new UserService();
	userService.deleteUser(Integer.valueOf(idStr));
	
	response.sendRedirect("/BanHangJsp/user/listUser.jsp");
%>