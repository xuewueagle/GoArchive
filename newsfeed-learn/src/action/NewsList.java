package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.servlet.ServletFileUpload;

import utils.NewsFromPost;


import model.Category;
import model.News;
import model.User;
import dao.NewsFeedDao;
@WebServlet("/news")
/**
 * 新闻详情
 * @author Administrator
 *
 */
public class NewsList extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String id=req.getParameter("idnews");
		String action = req.getParameter("action");
		int idnews=0;
		if(id!=null){
			idnews=Integer.parseInt(id);
		}
		
		NewsFeedDao thisDao = NewsFeedDao.getNewsFeedDao();
		HttpSession session = req.getSession();
		// 文件上传
		boolean isMultipart = ServletFileUpload.isMultipartContent(req);
		
		if(isMultipart){ // 表单提交
			News news = new NewsFromPost().getNewsFromPost(req);
			thisDao.editNews(news);
			int news_id=news.getIdnews();
			resp.sendRedirect("news?idnews="+news_id);
		}else{
			if(id==null){
				resp.sendRedirect("index");
			}else{
				if(action=="add" || "add".equals(action)){ // 添加新闻
					
				}else if (action=="edit" || "edit".equals(action)) { // 修改新闻
					
					User user = (User)session.getAttribute("user");
					News news = thisDao.getNews(idnews);
					// 获取所有分类
					ArrayList<Category> allCat = thisDao.getAllCategories();
					
					if(user == null || !(news.getAuthor().equals(user.getIduser()))){ // 若当前新闻不是当前用户发布的，则无权限访问，返回登录页面
						resp.sendRedirect("login");
					}else{
						req.setAttribute("news", news);
						req.setAttribute("allCat", allCat);
						req.getRequestDispatcher("editnews.jsp").forward(req, resp);
					}
					
					
				}else if (action=="del" || "del".equals(action)) { // 删除新闻
					
				}else{ // 查看新闻详情
					News news = thisDao.getNews(idnews);
					req.setAttribute("news", news);
					req.getRequestDispatcher("/news.jsp").forward(req, resp);
				}
			}
		}
		
		
			
	}
	
}
