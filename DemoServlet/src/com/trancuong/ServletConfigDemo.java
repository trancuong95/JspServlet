package com.trancuong;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebInitParam;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(urlPatterns= {"/testConfig"}, initParams= {
//		@WebInitParam(name="cương", value=". Cương was a happy man!!!")
//})
public class ServletConfigDemo extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = super.getServletConfig().getInitParameter("cương");
		resp.setContentType("text/html");
		PrintWriter printWriter = resp.getWriter(); //in ra console những gì mà resp trả về.
		printWriter.println("Xin chào" + name);
		printWriter.println(getServletConfig().getServletName());
		printWriter.close();
	}
}
