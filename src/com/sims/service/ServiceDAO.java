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

import com.sims.util.FIleCreaterUtil;
import com.sims.util.JDBCUtil;
import com.sims.util.PdfCreaterUtil;

public class ServiceDAO {
	
	//======================== System login authentication =====================================//
	public static ArrayList loginAuthenticaton(String username, String userpassword){
		ArrayList info = new ArrayList();
		try{
			Connection con = JDBCUtil.getConnection();
			String sqlQuery = "SELECT * FROM system_user WHERE password=? AND user_code=?";
			PreparedStatement ps = con.prepareStatement(sqlQuery);
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
	/*
	 * ############################## Student Registration Application Data Handing Process #####################
	 */
	public static int studentApplicationAdd(ArrayList<String> arryList) {
		int result = 0;
		try{
			boolean isMarried = false;
			if((arryList.get(15)).equals("married")){
				isMarried = true;
			}
			Connection con = JDBCUtil.getConnection();
			String sqlQuery = "INSERT INTO student_regi_application(student_id,student_lastname,student_initials,nic_no,full_name,degree_programe_code,province,permenent_address,telephone_fixed,mobile_number,email,al_index_number,z_score,race,religion,married,gurdian_name,gurdian_occupation,emergancy_name,emergancy_cont_number,photo_path,date_of_birth,submited_date,gurdian_workplace_address,emerganct_contact_wrkplace)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sqlQuery);
			ps.setString(1, arryList.get(0));
			ps.setString(2, arryList.get(1));
			ps.setString(3, arryList.get(2));
			ps.setString(4, arryList.get(3));
			
			ps.setString(5, arryList.get(4));
			ps.setString(6, arryList.get(5));
			ps.setString(7, arryList.get(6));
			ps.setString(8, arryList.get(7));
			
			ps.setString(9, arryList.get(8));
			ps.setString(10, arryList.get(9));
			ps.setString(11, arryList.get(10));
			ps.setString(12, arryList.get(11));
			
			ps.setDouble(13, Double.parseDouble(arryList.get(12)));
			ps.setString(14, arryList.get(13));
			ps.setString(15, arryList.get(14));
			ps.setBoolean(16, isMarried);
			
			ps.setString(17, arryList.get(16));
			ps.setString(18, arryList.get(17));
			ps.setString(19, arryList.get(18));
			ps.setString(20, arryList.get(19));
			ps.setString(21, arryList.get(20));
			ps.setString(22, arryList.get(21));
			ps.setString(23, arryList.get(22));
			ps.setString(24, arryList.get(23));
			ps.setString(25, arryList.get(24));
			System.out.println(arryList.get(0)+ " " + arryList.get(24) +" " + isMarried);
			result = ps.executeUpdate();
			if(result == 1){
				System.out.println("Creating folder..");
				int fileCreadted = 0;
				// Creating the Folder for student
				fileCreadted = FIleCreaterUtil.createUserFolder(arryList.get(3));
				if(fileCreadted == 1) {
					System.out.println("File " + arryList.get(3) +" is created");
					int pdfCreated = 0;
					System.out.println("Calling PdfUtil");
					pdfCreated = PdfCreaterUtil.createPDFStuRegiApplication(arryList.get(5),arryList.get(4),arryList.get(28),arryList.get(7),arryList.get(8),arryList.get(9),arryList.get(10),arryList.get(25),arryList.get(26),arryList.get(27),arryList.get(21),arryList.get(3),arryList.get(11),arryList.get(12),arryList.get(13),arryList.get(14),arryList.get(15),arryList.get(16),arryList.get(17),arryList.get(23),arryList.get(18),arryList.get(24),arryList.get(19),arryList.get(22));//full name passed 
				}
				else {
					System.out.println("Cannot create file " + arryList.get(3));
				}
			}
		}catch(SQLException e){
			System.err.println("Student Appilication is not submitted" + e.getMessage());
		}
		return result;
				
	}
	
	/*
	 * ############################## Reference data Handling for ServletRefUaerType #####################
	 */
	
	//======================== Reference data User Type data adding ================================//
	public static int refUserTypeAdd(String userCode, String userType, String userStatues) {
		int result = 0;
		try{
			Connection con = JDBCUtil.getConnection();
			String sqlQuery = "INSERT INTO ref_user_type(user_type_code,user_type,user_type_statues)VALUES(?,?,?)";
			PreparedStatement ps = con.prepareStatement(sqlQuery);
			ps.setString(1, userCode);
			ps.setString(2, userType);
			ps.setString(3, userStatues);
			
			result = ps.executeUpdate();
			return result;
		}
		catch(SQLException e){
			System.err.println("Ref user type not added->" + e.getMessage());
		}
		return result;
	}
	//==================== Referance data User Type Delete ========================================//
	public static int refUserTypeDelete(String id) {
		int result = 0;
		try{
			Connection con = JDBCUtil.getConnection();
			String sqlQuery = "DELETE FROM ref_user_type WHERE user_type_id=?";
			PreparedStatement ps = con.prepareStatement(sqlQuery);
			ps.setInt(1, Integer.parseInt(id));
			
			result = ps.executeUpdate();
			return result;
		}
		catch(SQLException e){
			System.err.println("Ref user type not deleted");
		}
		return result;
	}
	//==================== Referance data User Type Delete ========================================//
	public static int refUserTypeModify(String userCode, String userType, String userStatues,String id) {
		int result = 0;
		try{
			Connection con = JDBCUtil.getConnection();
			String sqlQuery = "UPDATE ref_user_type SET user_type_code=?, user_type=?, user_type_statues=? WHERE user_type_id = ?;";
			PreparedStatement ps = con.prepareStatement(sqlQuery);
			ps.setString(1, userCode);
			ps.setString(2, userType);
			ps.setString(3, userStatues);
			ps.setInt(4, Integer.parseInt(id));
			
			result = ps.executeUpdate();
			return result;
		}
		catch(SQLException e){
			System.err.println(e.getMessage());
			System.err.println("Ref user type not modified");
		}
		return result;
	}
	
	/*
	 * ############################## Reference data Handling for ServletRefCourse #####################
	 */
	
	//======================== Reference data Course data adding ================================//
	public static int refCourseAdd(String courseNameID,String courseName,String courseAcademicYear,String courseSemester,String numOfCredits, String courseLectuerer, String courseStatues) {
		int result = 0;
		try{
			Connection con = JDBCUtil.getConnection();
			String sqlQuery = "INSERT INTO ref_course(course_name_id,course_name,academic_year,academic_semester,num_credits,lecturer_in_charge,course_statues) VALUES(?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sqlQuery);
			ps.setString(1, courseNameID);
			ps.setString(2, courseName);
			ps.setString(3, courseAcademicYear);
			ps.setString(4, courseSemester);
			ps.setInt(5, Integer.parseInt(numOfCredits));
			ps.setString(6, courseLectuerer);
			ps.setString(7, courseStatues);
			
			result = ps.executeUpdate();
			System.err.println("Sql executed!");
		}
		catch(SQLException e){
			System.err.println("Course Data Not Added!");
		}
		return result;
	}
	
	//======================== Reference data Course data updating ================================//
	public static int refCourseModify(String courseNameID,String courseName,String courseAcademicYear,String courseSemester,String numOfCredits, String courseLectuerer, String courseStatues, String courseId) {
		int result = 0;
		try{
			Connection con = JDBCUtil.getConnection();
			String sqlQuery = "UPDATE ref_course SET course_name_id=?, course_name=?, academic_year=?, academic_semester=?, num_credits=?, lecturer_in_charge=?, course_statues=? WHERE course_id=?";
			PreparedStatement ps = con.prepareStatement(sqlQuery);
			ps.setString(1, courseNameID);
			ps.setString(2, courseName);
			ps.setString(3, courseAcademicYear);
			ps.setString(4, courseSemester);
			ps.setInt(5, Integer.parseInt(numOfCredits));
			ps.setString(6, courseLectuerer);
			ps.setString(7, courseStatues);
			ps.setInt(8, Integer.parseInt(courseId));
			
			result = ps.executeUpdate();
			System.err.println("Sql executed!");
		}
		catch(SQLException e){
			System.err.println("Course Data Not Modified!");
		}
		return result;
	}
	
	
}
