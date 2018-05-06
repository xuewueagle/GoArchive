package dao;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.InvalidPropertiesFormatException;
import java.util.List;
import java.util.Properties;

import model.Category;
import model.News;
import model.User;

public class NewsFeedDao implements Dao{
	private static NewsFeedDao thisDao;
	private static Connection conn;
	
	public  NewsFeedDao() {
		String dbUrl;
		String dbPwd;
		Properties properties=new Properties();
		try {
			properties.loadFromXML(new BufferedInputStream(getClass().getClassLoader().getResourceAsStream("settings.xml")));
		} catch (InvalidPropertiesFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		dbUrl = properties.getProperty("dbURL");
		dbPwd = properties.getProperty("dbPassword");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbUrl,"root",dbPwd);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	public static NewsFeedDao getNewsFeedDao(){
		if(thisDao == null){
			thisDao = new NewsFeedDao();
		}
		return thisDao;
	}

	@Override
	public User getUser(String email,String pwd) {
		User user=new User();
		try {
			String sql="select * from user where iduser=? and userpassword=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, pwd);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				user.setIduser(rs.getString("iduser"));
				user.setUsername(rs.getString("username"));
				user.setUserpassword(rs.getString("userpassword"));
				user.setUsersurname(rs.getString("usersurname"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}

	@Override
	public Category getCategory(int idcategory) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	/**
	 * 查看新闻内容
	 */
	public News getNews(int idnews) {
		News news = new News();
		try {
			PreparedStatement pstmt = conn.prepareStatement("select idnews,idcat,title,annotation,text,author,date,image,namecategory,username,usersurname from news,category,user where idnews=? and idcat=idcategory and author=iduser");
			pstmt.setInt(1, idnews);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				news.setIdnews(rs.getInt("idnews"));
				news.setIdcat(rs.getInt("idcat"));
				news.setTitle(rs.getString("title"));
				news.setAnnotation(rs.getString("annotation"));
				news.setText(rs.getString("text"));
				news.setAuthor(rs.getString("author"));
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
				String date = dateFormat.format(rs.getDate("date"));
				news.setDate(date);
				news.setImage(rs.getString("image"));
				news.setNamecategory(rs.getString("namecategory"));
				news.setUsername(rs.getString("username"));
				news.setUsersurname(rs.getString("usersurname"));
			}
		 } catch (SQLException e) {
			 e.printStackTrace();
		 }
		return news;	
	}

	@Override
	/**
	 * 获取所有新闻分类
	 */
	public ArrayList<Category> getAllCategories() {
		ArrayList<Category> categories = new ArrayList<Category>();
		String sql="select * from category";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				Category category=new Category();
				category.setIdcategory(rs.getInt("idcategory"));
				category.setNamecategory(rs.getString("namecategory"));
				categories.add(category);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return categories;
	}

	@Override
	/**
	 * 获取每个分类对应的所有新闻等信息
	 */
	public ArrayList<News> getAllNewsByCat(int idCategory) {
		ArrayList<News> all_news = new ArrayList<News>();
		String sql="select idnews,idcat,title,annotation,text,author,date,image,namecategory,username,usersurname from news,category,user where idcat=? and idcat=idcategory and author=iduser order by time_to_sec(date) desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idCategory);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				News news = new News();
				news.setIdnews(rs.getInt("idnews"));
				news.setIdcat(rs.getInt("idcat"));
				news.setTitle(rs.getString("title"));
				news.setAnnotation(rs.getString("annotation"));
				news.setText(rs.getString("text"));
				news.setAuthor(rs.getString("author"));
				// 日期格式化 start
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
				String date = dateFormat.format(rs.getDate("date"));
				// 日期格式化 end
				news.setDate(date);
				news.setImage(rs.getString("image"));
				news.setNamecategory(rs.getString("namecategory"));
				news.setUsername(rs.getString("username"));
				news.setUsersurname(rs.getString("usersurname"));
				all_news.add(news);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return all_news;
	}

	@Override
	public ArrayList<News> getFirstNewsByCat(int idCategory) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<User> getAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setNews(News news) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteNews(int idnews) {
		// TODO Auto-generated method stub
		
	}

	@Override
	/**
	 * 修改新闻
	 */
	public void editNews(News news) {
		String image = news.getImage();
		if(image == null || image.isEmpty()){
			image = "";
		} else {
			image = ",image='" + image + "' ";
		}
				
		try {
			PreparedStatement statement = conn.prepareStatement("update news set idcat=?,title=?,annotation=?,text=?" + image + " where idnews=?");
			statement.setInt(1, news.getIdcat());
			statement.setString(2, news.getTitle());
			statement.setString(3, news.getAnnotation());
			statement.setString(4, news.getText());
			statement.setInt(5, news.getIdnews());
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	
}
