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
		String idStr = request.getParameter("id"); //ở đây phải để viết id thường, viết hoa sẽ thông báo lỗi
		UserService userService = new UserService();
		User user = userService.getUserById(Integer.parseInt(idStr));
	%>

	<!-- Tạo bảng hiển thị các thông tin điền vào form -->
	<table>
		<tr>
			<td>Tên</td>
			<td><%=user.getName() %></td>
		</tr>
		<tr>
			<td>Mật Khẩu</td>
			<td><%=user.getPassword()%></td>
		</tr>
		<tr>
			<td>Điện Thoại</td>
			<td><%=user.getPhone()%></td>
		</tr>
		<tr>
			<td>Tên Tài Khoản</td>
			<td><%=user.getUsername()%></td>
		</tr>
		<tr>
			<td>Giới Thiệu</td>
			<td><%=user.getAbout()%></td>
		</tr>
		<tr>
			<td>Phân Quyền</td>
			<td><%=user.getRole()%></td>
		</tr>
		<tr>
			<td>Sở Thích</td>
			<td><%=user.getFavourites()%></td>
		</tr>
	</table>
</body>
</html>

<!-- Như vậy tạo trang chứa link đến form cần điền, tạo trang form để điền các thông tin, và tạo - tùy biến ở trang để hiện thị nội dung hiển thị nội dung -->