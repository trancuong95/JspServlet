<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Cookie[] cookies = request.getCookies();
	for(Cookie cookie: cookies){
		if(cookie.getName().equals("name")){
			String value = cookie.getValue();
			%>
			<h1><%=value %></h1>
			<%
		}
		
	}
	%>
	<h1>Them nguoi dung moi</h1>
	<!-- Tạo form -->
	<form action="addUserPost.jsp" method="post">
		<input type="text" name="name" placeholder="Tên Người dùng" /> <br>
		<input type="text" name="phone" placeholder="Số điện thoại" /> <br>
		<input type="text" name="username" placeholder="Tên Tài Khoản" /> <br>
		<input type="password" name="password" placeholder="Mật Khẩu" /> <br>
		<textarea rows="9" cols="33" name="about" placeholder="Giới thiệu"></textarea> <br>
		
		<input type="radio" name="role" placeholder="ADMIN" /> ADMIN <br>
		<input type="radio" name="role" placeholder="USER" /> USER <br>
		
		<input type="checkbox" name="favourites" value="Nghe Nhạc"/> Nghe Nhạc <br>
		<input type="checkbox" name="favourites" value="Xem Phim"/> Xem Phim <br>
		<input type="submit" value="Add" />
	</form>
</body>
</html>

<!-- tạo form, đồng thời submit đến trang viewUser.jsp để hiển thị các thông tin điền vào trong form -->