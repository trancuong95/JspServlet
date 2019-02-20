//package com.trancuong.filter;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//
//import javax.servlet.Filter;
//import javax.servlet.FilterChain;
//import javax.servlet.FilterConfig;
//import javax.servlet.ServletException;
//import javax.servlet.ServletRequest;
//import javax.servlet.ServletResponse;
//import javax.servlet.annotation.WebFilter;
//import javax.servlet.http.HttpServletRequest;
//
//@WebFilter(urlPatterns= {"/user/listUser.jsp"})
//public class FilterWeb implements Filter{
//
//	@Override
//	public void destroy() {
//		// TODO Auto-generated method stub
//		
//	}
//
//	@Override
//	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
//			throws IOException, ServletException {
//		System.out.println("Start Filter");
//		HttpServletRequest httpServletRequest = (HttpServletRequest) request; //phải ép kiểu request trên để nó thừa hưởng từ object cha HttpServletRequest, dùng
//		//các phương thức con getSession(), setAttribute()
//		//Bắt đầu set key và value cho Attribute trong Session
//		httpServletRequest.getSession().setAttribute("name", "hello CmcGlobal"); //chú ý nhớ lại session, cookie trong servlet
//		chain.doFilter(request, response);
//		response.setContentType("text/html");
//		PrintWriter printWriter = response.getWriter();
//		printWriter.println("Hello World");
//	}
//
//	@Override
//	public void init(FilterConfig filterConfig) throws ServletException {
//		// TODO Auto-generated method stub
//		
//	}
//	//chú ý JSP session bản chất chính là HttpSession
//}
