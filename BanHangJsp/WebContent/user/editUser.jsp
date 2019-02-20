<%@page import="com.trancuong.model.User"%>
<%@page import="com.trancuong.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User</title>
</head>
<body>
	<%
		String idStr = request.getParameter("id"); //ở đây phải để viết id thường, viết hoa sẽ thông báo lỗi
		UserService userService = new UserService();
		User user = userService.getUserById(Integer.valueOf(idStr)); //nên nhớ ở đây idStr đã là 1 string rồi nên không được để trong dấu "idStr", không nó sẽ báo lỗi
	%>
	<h1>Sửa người dùng</h1>
	<form action="editUserPost.jsp" method="post">
		<input type="hidden" name="id" value="<%=user.getId()%>" /> <br>
		<input type="text" name="name" placeholder="Tên Người dùng"
			value="<%=user.getName()%>" /> <br> <input type="text"
			name="phone" placeholder="Số điện thoại"
			value="<%=user.getPhone()%>" /> <br> <input type="text"
			name="username" placeholder="Tên Tài Khoản"
			value="<%=user.getUsername()%>" /> <br> <input type="password"
			name="password" placeholder="Mật Khẩu"
			value="<%=user.getPassword()%>" /> <br>
		<textarea rows="9" cols="33" name="about" placeholder="Giới thiệu"><%=user.getAbout()%></textarea>
		<br>

		<%
			if (user.getRole().equals("ADMIN")) {
		%>
		<input type="radio" name="role" placeholder="Admin" value="ADMIN"
			checked="checked" /> ADMIN <br> <input type="radio" name="role"
			placeholder="User" value="USER" /> USER <br>
		<%
			} else {
		%>
		<input type="radio" name="role" placeholder="Admin" value="ADMIN" />
		ADMIN <br> <input type="radio" name="role" placeholder="User"
			value="USER" checked="checked" /> USER <br>
		<%
			}
		%>

		<%
			String favourites = user.getFavourites();
			if (favourites.contains("Nghe Nhạc") && favourites.contains("Xem Phim")) {
		%>
		<input type="checkbox" name="favourites" value="Nghe Nhạc"
			checked="checked" /> Nghe Nhạc <br> <input type="checkbox"
			name="favourites" value="Xem Phim" checked="checked" /> Xem Phim <br>
		<%
			} else if (favourites.contains("Nghe Nhạc")) {
		%>
		<input type="checkbox" name="favourites" value="Nghe Nhạc"
			checked="checked" /> Nghe Nhạc <br> <input type="checkbox"
			name="favourites" value="Xem Phim" /> Xem Phim <br>
		<%
			} else {
		%>
		<input type="checkbox" name="favourites" value="Nghe Nhạc" /> Nghe
		Nhạc <br> <input type="checkbox" name="favourites"
			value="Xem Phim" checked="checked" /> Xem Phim <br>
		<%
			}
		%>
		<input type="submit" value="Add" />
	</form>
</body>
</html>