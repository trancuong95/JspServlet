<%@page import="com.trancuong.model.User"%>
<%@page import="com.trancuong.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show User</title>
</head>
<body>
	<!-- Lấy ra các thông tin từ form gửi lên server -->
	<%
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String about = request.getParameter("about");
		String username = request.getParameter("username");
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
		
		userService.addUser(user);
		
		response.sendRedirect("/BanHangJsp/user/listUser.jsp");
	%>
</body>
</html>

<!-- Như vậy tạo trang chứa link đến form cần điền, tạo trang form để điền các thông tin, và tạo - tùy biến ở trang để hiện thị nội dung cần hiển thị -->