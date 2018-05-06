package action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;
import dao.NewsFeedDao;
@WebServlet("/login")
/**
 * 用户登录
 * @author Administrator
 *
 */
public class SignIn extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String iduser       = req.getParameter("iduser");
		String userpassword = req.getParameter("userpassword");
		HttpSession session = req.getSession();
		User users = (User) session.getAttribute("user");
		if(iduser==null && userpassword==null){
			if(users != null){
				resp.sendRedirect("index");
			}else{
				RequestDispatcher dispatcher = req.getRequestDispatcher("/signin.jsp");
				dispatcher.forward(req, resp);
			}
			
		}else{
			NewsFeedDao thisDao = NewsFeedDao.getNewsFeedDao();
			User user=thisDao.getUser(iduser,userpassword);
			String email = user.getIduser();
			
			if(email!=null){ // 用户名及密码验证通过
				session.setAttribute("user", user);
				//req.setAttribute("sessionScope", session);
				//req.getRequestDispatcher("/index").forward(req, resp);
				resp.sendRedirect("index");
			}else{ // 用户名及密码验证未通过
				req.setAttribute("email", iduser);
				req.setAttribute("password", userpassword);
				req.setAttribute("error", 1);
				req.getRequestDispatcher("/signin.jsp").forward(req, resp);
			}
			
		}
		
	}
	
}
