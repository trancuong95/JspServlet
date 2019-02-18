package com.trancuong;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Demo1 extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
		System.out.println("Khởi tạo luồng");
	}
	
	@Override
	public void destroy() {
		System.out.println("Kết thúc luồng");
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.service(req, resp);
	}
	
	//khi gõ đường dẫn trên thanh địa chỉ của trình duyệt thì phương thức gửi đến server là phương thức GET
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter printWriter = resp.getWriter();
		printWriter.println("<h2>WellCome to CMC-Global</h2>");
		printWriter.println("<p>Servlet rất là hay</p>");
	}
	
}
