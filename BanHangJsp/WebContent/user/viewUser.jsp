<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Lấy ra các thông tin từ form gửi lên server -->
	<%
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String about = request.getParameter("about");
		String favourite1 = request.getParameter("favourite 1");
		String favourite2 = request.getParameter("favourite 2");
		String fav = "";
		if (!(favourite1.isEmpty())) {
			fav += favourite1;
		}
		if (!(favourite2.isEmpty())) {
			fav += favourite2;
		}
	%>

	<!-- Tạo bảng hiển thị các thông tin điền vào form -->
	<table>
		<tr>
			<td>Ten</td>
			<td><%=name%></td>
		</tr>
		<tr>
			<td>Mat Khau</td>
			<td><%=password%></td>
		</tr>
		<tr>
			<td>Dien Thoai</td>
			<td><%=phone%></td>
		</tr>
		<tr>
			<td>Gioi Thieu</td>
			<td><%=about%></td>
		</tr>
		<tr>
			<td>So thich</td>
			<td><%=fav%></td>
		</tr>
	</table>
</body>
</html>

<!-- Như vậy tạo trang chứa link đến form cần điền, tạo trang form để điền các thông tin, và tạo - tùy biến ở trang để hiện thị nội dung hiển thị nội dung -->