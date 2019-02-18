package com.trancuong;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/testRequest")
public class RequestServletDemo extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//từ đối tượng request gửi lên sẽ chứa tất cả các thông tin từ client gửi lên server, do đó các hàm trong request là các hàm GET
		System.out.println("Phương thức của request: " + req.getMethod());
		
		System.out.println("Phương thức của request: " + req.getContentType());
		req.getContentType(); //chú ý đối với request thì có .getContentType(); còn đối với response thì có .setContentType();
		
		req.getContextPath();
		req.getSession();
		System.out.println(req.getServerName());
		System.out.println(req.getServletPath());
		
		//có thể lấy thông tin từ header, header là các thông tin trình duyệt gửi lên từ client
		req.getHeaderNames();
		Enumeration<String> keys = req.getHeaderNames();
		
		while(keys.hasMoreElements()) {
			String key = keys.nextElement();
			System.out.println(key + " : " + req.getHeader(key));
		}
		
		//HttpServlet sẽ chứa các thông tin từ client gửi lên server
	}
}
