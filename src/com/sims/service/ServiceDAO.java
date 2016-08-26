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
			String sql = "SELECT * FROM system_user WHERE password=? AND user_code=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,userpassword);
			ps.setString(2,username);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				System.out.println("ok logged is as: " + rs.getString("user_type"));
				info.add(rs.getString("user_id"));
				info.add(rs.getString("user_type"));
				info.add(rs.getString("user_first_name"));
				info.add(rs.getString("user_last_name"));
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
	
	//=========================  Student Registration Form Data Adding ===============================//
	//public static int studentRegistrationAdd();
	
}
