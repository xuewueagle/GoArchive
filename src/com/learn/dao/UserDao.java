package com.learn.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;


import java.sql.ResultSet;

import com.learn.model.User;

// 数据处理层---dao层和model实体类层组成MVC模式中的M
public class UserDao {
	
	public User login(Connection conn,User user) throws Exception{
		User resultUser = null;
		String sql = "select * from t_user where userName=? and password=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,user.getUserName());
		pstmt.setString(2,user.getPassword());
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()){
			resultUser=new User();
			resultUser.setUserName(rs.getString("userName"));
			resultUser.setPassword(rs.getString("password"));
		}
		
		return resultUser;
	}
}
