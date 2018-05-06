package dao;

import java.util.ArrayList;

import model.Category;
import model.News;
import model.User;

public interface Dao {
	
	User getUser(String email,String pwd);
	Category getCategory(int idcategory);
	News getNews(int idnews);
	
	ArrayList<Category> getAllCategories();
	ArrayList<News> getAllNewsByCat (int idCategory);
	ArrayList<News> getFirstNewsByCat (int idCategory);
	ArrayList<User> getAllUsers();
	
	void setNews(News news);
	void deleteNews(int idnews);
	void editNews(News news);
}
