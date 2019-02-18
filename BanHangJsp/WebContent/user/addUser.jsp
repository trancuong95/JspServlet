<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Them nguoi dung moi</h1>
	<!-- Tạo form -->
	<form action="viewUser.jsp" method="post">
		<input type="text" name="name" placeholder="Ten nguoi dung" /> 
		<input type="password" name="password" placeholder="Mat khau" /> 
		<input type="text" name="phone" placeholder="Dien Thoai" />
		<textarea rows="12" cols="33" name="about" placeholder="Gioi thieu"></textarea>
		<input type="checkbox" name="favourite 1" value="Nghe Nhac"/> Nghe Nhac 
		<input type="checkbox" name="favourite 2" value="Xem Phim"/> Xem Phim 
		<input type="submit" value="them" />
	</form>
</body>
</html>

<!-- tạo form, đồng thời submit đến trang viewUser.jsp để hiển thị các thông tin điền vào trong form -->