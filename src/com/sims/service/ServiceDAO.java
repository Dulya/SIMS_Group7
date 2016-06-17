/*
*Author 	: Nandika Herath
*Project 	: Student Information Management System(SIMS)
*Package	: com.sims.service
*Name		: test.java
*/

package com.sims.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sims.util.JDBCUtil;

public class ServiceDAO {
	public static ArrayList loginAuthenticaton(String username, String userpassword){
		ArrayList info = new ArrayList();
		try{
			Connection con = JDBCUtil.getConnection();
			String sql = "SELECT * FROM systen_user WHERE user_pwd=? AND user_name=?";
			//String sql = "INSERT INTO systen_user (user_pwd, user_name)VALUES (?,?) ";
			// write the rest to execute a prepared statement to authenticate user
			// Complete tomorrow
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,userpassword);
			ps.setString(2,username);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				System.out.println("ok logged is as: " + rs.getString("user_type"));
				info.add(rs.getString("user_id"));
				info.add(rs.getString("user_type"));
				info.add(rs.getString("user_name"));
			}
			else{
				System.out.println("No results!");
				info = null;
			}
		}
		catch(SQLException e){
			System.out.println(e.getMessage());
		}
		return info;
	}
}
