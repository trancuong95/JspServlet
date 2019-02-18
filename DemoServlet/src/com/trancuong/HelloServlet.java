package com.trancuong;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//có thể map servlet với nhiều url patterns khác nhau, dùng annotation sẽ không cần cấu hình như bài trước ở file web.xml nữa
@WebServlet(urlPatterns= {"/xin-chao", "/hello"}, name = "hello")
public class HelloServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html"); //trả về là 1 trang html
		PrintWriter printWriter = resp.getWriter();
		printWriter.println("Xin chào trần cương");
		printWriter.close();
	}
	
}
