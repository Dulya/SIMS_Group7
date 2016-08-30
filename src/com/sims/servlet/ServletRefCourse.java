package com.sims.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sims.service.ServiceDAO;

/**
 * Servlet implementation class ServletRefCourse
 */
//@WebServlet("/ServletRefCourse")
public class ServletRefCourse extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result = 0;
		String courseId = request.getParameter("course_id");
		String courseNameID = request.getParameter("course_name_code");
		String courseName = request.getParameter("course_name");
		String courseAcademicYear = request.getParameter("academic_year");
		String courseSemester = request.getParameter("academic_semester");
		String numOfCredits = request.getParameter("num_credits");
		String courseLectuerer = request.getParameter("lec_in_charge");
		String courseStatues = request.getParameter("active");
		
		String formAction = request.getParameter("btnSubmit");
		if(formAction.equals("btnAdd")){
			result = ServiceDAO.refCourseAdd(courseNameID, courseName, courseAcademicYear, courseSemester, numOfCredits, courseLectuerer, courseStatues);
			
			response.sendRedirect("webComponents/jsp/Ref_Course.jsp");
		}
		if(formAction.equals("btnModify")){
			result = ServiceDAO.refCourseModify(courseNameID, courseName, courseAcademicYear, courseSemester, numOfCredits, courseLectuerer, courseStatues, courseId);
			response.sendRedirect("webComponents/jsp/Ref_Course.jsp");
		}

	}

}
