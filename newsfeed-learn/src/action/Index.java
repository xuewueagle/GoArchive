package action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.NewsFeedDao;
import model.Category;
import model.News;
import model.User;


@WebServlet("/index")  // 是新的jdk版本的特点，可以取代web.xml中的手动配置
/**
 * 首页
 * @author Administrator
 *
 */
public class Index extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//String action = req.getParameter("action");
		HttpSession session=req.getSession();
		User user = (User) session.getAttribute("user");
		String email=null;
		if(user != null){
			email=user.getIduser();
		}
		
		if(email==null){ // 未登录的话 跳转至登录页面
			//req.getRequestDispatcher("/login").forward(req, resp);
			// 以下为客户端请求重定向
			//resp.sendRedirect("signin.jsp");  // 这样写和下面写法都可以  注意路径 
			resp.sendRedirect("login");
		}else{ // 已成功登录，跳转至主页  
			
			NewsFeedDao thisDao = NewsFeedDao.getNewsFeedDao();
			ArrayList<Category> categories=thisDao.getAllCategories();
			ArrayList<ArrayList<News>> rows = new ArrayList<ArrayList<News>>();
			
			for(Category cat:categories){
				ArrayList<News> all_news = new ArrayList<News>();
				all_news = thisDao.getAllNewsByCat(cat.getIdcategory());
				rows.add(all_news);
			}
			
		
			
			
			
			
			
			req.setAttribute("allCategories", categories);
			req.setAttribute("rows", rows);
			
			// 以下为服务端请求转发
			req.getRequestDispatcher("/main.jsp").forward(req, resp);
		}
	}
	
	
}
