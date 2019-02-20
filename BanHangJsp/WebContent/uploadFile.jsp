<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="java.io.*"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
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
		String url = "";
		DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
		diskFileItemFactory.setRepository(
				new File("C:\\Users\\User.DESKTOP-PGKHSCB\\eclipse-workspace\\BanHangJsp\\WebContent"));
		ServletFileUpload fileUpload = new ServletFileUpload();
		
		List<FileItem> fileItems = fileUpload.parseRequest(request);
		
		for(FileItem fileItem: fileItems){
			if(!fileItem.isFormField()){
				if(fileItem.getFieldName().equals("file")){
					File file = new File("C:\\Users\\User.DESKTOP-PGKHSCB\\eclipse-workspace\\BanHangJsp\\WebContent\\image" + fileItem.getName());
					fileItem.write(file);
					url = "/BanhangJsp/image" + fileItem.getName();
				}
			}
		}
	%>
	
	<img alt="Đường dẫn file nguồn" src="<%=url %>">
</body>
</html>