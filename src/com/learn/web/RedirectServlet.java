package com.learn.web;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RedirectServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("requestKey", "request值");
		HttpSession session=request.getSession();  // 获取session
		session.setAttribute("sessionKey", "session值");
		ServletContext application = this.getServletContext();
		application.setAttribute("applicationKey", "application值");
		resp.sendRedirect("servlet/target.jsp"); // 客户端跳转/重定向  url会改变
		
	}
	
	
	
}
