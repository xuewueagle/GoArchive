package com.learn.web;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.learn.dao.UserDao;
import com.learn.model.User;
import com.learn.util.DbUtil;

public class LoginServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	DbUtil db = new DbUtil();
	UserDao user_dao = new UserDao();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = req.getParameter("userName");
		String pwd = req.getParameter("password");
		Connection conn = null;
		try {
			conn = db.getConn();
			User user = new User();
			user.setUserName(username);
			user.setPassword(pwd);
			User currentUser = user_dao.login(conn, user);
			if(null == currentUser){
				req.setAttribute("error", "用户名或密码错误");
				req.setAttribute("userName", username);
				req.setAttribute("password", pwd);
				
				req.getRequestDispatcher("servlet/login.jsp").forward(req, resp);
			}else{
				HttpSession session = req.getSession();
				session.setAttribute("currentUser", currentUser);
				resp.sendRedirect("servlet/main.jsp");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
	
}
