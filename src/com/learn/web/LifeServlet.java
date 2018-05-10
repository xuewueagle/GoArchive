package com.learn.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LifeServlet extends HttpServlet{

	/**
	 *  Servlet 的生命周期，简单的概括这就分为四步：servlet 类加载--->实例化--->服务--->销毁。
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("service1");
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("service2");
	}
	
	@Override
	public void destroy() {
		System.out.println("servlet销毁");
	}

	@Override
	public void init() throws ServletException {
		System.out.println("servlet初始化");
	}
	
}
