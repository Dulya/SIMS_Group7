package com.sims.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sims.service.ServiceDAO;

/**
 * Servlet implementation class ServletStudentRegiApplication
 */
//@WebServlet("/ServletStudentRegiApplication")
public class ServletStudentRegiApplication extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("ServletStudentRegiApplication Found");
		int result = 0;
		String studentId = request.getParameter("tempId");
		String lastName = request.getParameter("lastname");
		String initials = request.getParameter("initials");
		String studentNIC = request.getParameter("nic");
		String fullName = request.getParameter("fullname");
		String course = request.getParameter("course");
		String province = request.getParameter("province");
		String permanentAddress = request.getParameter("permanentaddress");
		String fiexdTelNum = request.getParameter("fixedline");
		String mobileNum = request.getParameter("mobilenumber");
		String studentEmail = request.getParameter("email");
		String studentDOB = request.getParameter("dob");
		String alIndex = request.getParameter("al_index");
		String zSocere = request.getParameter("z_score");
		String race = request.getParameter("race");
		String religion = request.getParameter("religion");
		String civilStatues = request.getParameter("civilstatues");
		String guardianName = request.getParameter("guardianname");
		String guardianOccupation = request.getParameter("guardianoccupation");
		String guardianWorkPlaceAddress = request.getParameter("guardianworkplaceaddress");
		String emergancyContName = request.getParameter("emargencycontatctname");
		String emergancyContNumber = request.getParameter("emargencycontactnumber");
		String emargancyContWorkPlace = request.getParameter("emargancyworkplaceaddress");
		String photoPath = "N_A";
		String submittedDate = request.getParameter("submitted_date");
		
		
		civilStatues = civilStatues.toLowerCase();
		if(civilStatues.equals("married")){
			civilStatues = "true";
		}
		else{
			civilStatues = "false";
		}
		
		ArrayList<String> arryList = new ArrayList();
		arryList.add(studentId);
		arryList.add(lastName);
		arryList.add(initials);
		arryList.add(studentNIC);
		
		arryList.add(fullName);
		arryList.add(course);
		arryList.add(province);
		arryList.add(permanentAddress);
		
		arryList.add(fiexdTelNum);
		arryList.add(mobileNum);
		arryList.add(studentEmail);
		arryList.add(alIndex);
		
		arryList.add(zSocere);
		arryList.add(race);
		arryList.add(religion);
		arryList.add(civilStatues);
		
		arryList.add(guardianName);
		arryList.add(guardianOccupation);		
		arryList.add(emergancyContName);
		arryList.add(emergancyContNumber);
		
		arryList.add(photoPath);
		arryList.add(studentDOB);
		arryList.add(submittedDate);
		arryList.add(guardianWorkPlaceAddress);
		arryList.add(emargancyContWorkPlace);
		
		result = ServiceDAO.studentApplicationAdd(arryList);
		if(result == 1){
			response.sendRedirect("webComponents/jsp/Ref_Course.jsp");
		}
		else{
			response.sendRedirect("webComponents/jsp/StudentRegiApplication.jsp");
		}
	}

}
