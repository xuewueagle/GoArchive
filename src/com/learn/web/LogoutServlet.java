package com.learn.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet{

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
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		// 关于session销毁的问题，invalidate() 和removeAttribute()的区别：
		// request.getSession().invalidate(); //销毁当前会话域中的所有属性
		// request.getSession().removeAttribute("username"); //假设当前session域对象中已经有属性名为username的属性
		/*
		 *  推荐用removeAttribute() ，假设一个用户购物的实际应用场景，你在淘宝上购物，添加了多件不同类型的商品在购物车（一次会话中，设置包含每件商品的属性 如：session.setAttribute("goods1");  session.setAttribute("goods2"); session.setAttribute("goods3"); session.setAttribute("goods4");等），当你不想买某件商品时，直接session.removeAttribute("goodx");（x为1，2，3，4代表商品），从购物车中移除。
　　			如果使用invalidate(),清除了购物车中所有商品。　　
		 */
		//session.invalidate();
		session.removeAttribute("currentUser");
		resp.sendRedirect("servlet/login.jsp");
	}
	
	
	
}
