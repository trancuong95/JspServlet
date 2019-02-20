<%@page import="com.trancuong.model.User"%>
<%@page import="com.trancuong.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User Post</title>
</head>
<body>
	<!-- Lấy ra các thông tin từ form gửi lên server -->
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String about = request.getParameter("about");
		String role = request.getParameter("role");
		String[] favourites = request.getParameterValues("favourites");
		
		String fav = "";
		
		for(String f: favourites){
			fav += f + ", ";
		}
		
		UserService userService = new UserService();
		User user = new User();
		user.setName(name);
		user.setPassword(password);
		user.setPhone(phone);
		user.setAbout(about);
		user.setUsername(username);
		user.setRole(role);
		user.setFavourites(fav);
		user.setId(Integer.valueOf(id));
		
		userService.updateUser(user);
		
		response.sendRedirect("/BanHangJsp/user/listUser.jsp");
	%>
</body>
</html>

<!-- Như vậy tạo trang chứa link đến form cần điền, tạo trang form để điền các thông tin, và tạo - tùy biến ở trang để hiện thị nội dung -->