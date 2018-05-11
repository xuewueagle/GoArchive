package com.learn.util;

import java.sql.Connection;
import java.sql.DriverManager;
// 工具类封装
public class DbUtil {
	private String dbUrl = "jdbc:mysql://localhost:3306/db_jsp";
	private String dbUserName = "root";
	private String dbPassword = "root";
	private String jdbcName = "com.mysql.jdbc.Driver";
	
	
	public Connection getConn() throws Exception{
		Class.forName(jdbcName);
		Connection conn = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
		return conn;
	}
	
	public void closeConn(Connection conn) throws Exception{
		if(null != conn){
			conn.close();
		}
	}
	
	public static void main(String[] args){
		DbUtil db = new DbUtil();
		try {
			db.getConn();
			System.out.println("数据库连接成功了！");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
