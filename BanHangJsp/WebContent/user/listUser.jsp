<%@page import="com.trancuong.model.User"%>
<%@page import="com.trancuong.service.UserService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh Sách User</title>
</head>
<body>
	<a href="addUser.jsp">Thêm Người dùng mới</a>
	<h1>Danh sách user</h1>
	<%
		String name = (String) session.getAttribute("name"); //do trả về một đối tượng, nên ta phải ép kiểu sang String
		UserService userService = new UserService();
		List<User> users = userService.getAllUser();
	%>
	<h2><%=name %></h2>
	<table>
		<tr>
			<th>ID</th>
			<th>TÊN</th>
			<th>TÀI KHOẢN</th>
			<th>CHỌN</th>
		</tr>

		<%
			for (User user : users) {
		%>
		<tr>
			<td><%=user.getId()%></td>
			<td><%=user.getName()%></td>
			<td><%=user.getUsername()%></td>
			<th><a href="editUser.jsp?id=<%=user.getId()%>">Sửa</a>|<a
				href="deleteUser.jsp?id=<%=user.getId()%>">Xóa</a>|<a
				href="viewUser.jsp?id=<%=user.getId()%>">Chi Tiết</a></th>
		</tr>
		<%
			}
		%>
	</table>
	<%
	Cookie cookie = new Cookie("name", "aaa"); //Không cho phép có dấu cách trong cookie value, vd("aaa "). Nếu có dấu cách nó sẽ báo lỗi
	response.addCookie(cookie);
	%>	
</body>
</html>