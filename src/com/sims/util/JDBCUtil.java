/*
*Author 	: Nandika Herath
*Project 	: Student Information Manegement System(SIMS)
*Package	: com.sims.service
*Name		: test.java
*/
package com.sims.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class JDBCUtil {
	public static final String DRIVER = "org.postgresql.Driver";
	public static final String URL = "jdbc:postgresql://localhost:5432/SIMS";
	public static final String USERNAME = "postgres";
	public static final String PASSWORD = "nandika135nandi";
	
	public static Connection getConnection(){
		System.out.println("Postgre Driver Test Start!!");
		try{
			Class.forName(DRIVER);
			
		}catch(ClassNotFoundException e){
			System.out.println("Driver Not Found!!");
		}
		System.out.println("Driver Registered Successfully!!");
		
		Connection con = null;
		try{
			con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
		}
		catch(SQLException e){
			System.out.println("Connection Failed!!");
			e.printStackTrace();
		}
		if(con != null){
			System.out.println("Connection Successful!!");
		}else{
		System.out.println("No Connection, COnnection Failed!!");
		}
		return con;
	}
}
