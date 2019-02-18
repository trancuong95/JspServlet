package com.trancuong;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/response")
public class ResponeServletDemo extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override //hàm doGet để nhận các request phương thức là Get từ client gửi lên server
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//đối tượng resp set các nội dung từ server trả về
		//trả về 1 trang html
		resp.setContentType("text/plain"); //chú ý đối với request thì có .getContentType(); còn đối với response thì có .setContentType();
		//có thể trả về kiểu khác là: "text/html"
		//Tạo một đối tượng printWriter
		PrintWriter printWriter = resp.getWriter(); //để ghi thông tin trả về từ server
		printWriter.println("<h1>Xin chào trần cương. A new buddha</h1>"); // trả thông tin từ server gửi về client
		printWriter.close();
		
		resp.addCookie(new Cookie("a", "c"));
		resp.addHeader("a", "aaa"); //có thể set thông tin header trả về key, value
		resp.sendError(200);
	}
}
