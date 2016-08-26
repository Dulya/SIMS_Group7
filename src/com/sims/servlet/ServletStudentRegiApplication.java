package com.sims.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletStudentRegiApplication
 */
@WebServlet("/ServletStudentRegiApplication")
public class ServletStudentRegiApplication extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String course = request.getParameter("course");
		String fullName = request.getParameter("fullname");
		String nameWithIni = request.getParameter("namewithinitials");
		String permanentAddress = request.getParameter("permanentaddress");
		String studentEmail = request.getParameter("email");
		String studentDOB = request.getParameter("dob");
		String studentNIC = request.getParameter("nic");
		String fiexdTelNum = request.getParameter("fixedlinenum");
		String mobileNum = request.getParameter("mobilenum");
		String alIndex = request.getParameter("alindex");
		String zSocere = request.getParameter("z_score");
		String race = request.getParameter("race");
		String religion = request.getParameter("religion");
		String civilStatues = request.getParameter("civilstatues");
		String guardianName = request.getParameter("guardianname");
		String guardianOccupation = request.getParameter("occupation");
		String guardianWorkPlaceAddress = request.getParameter("workplaceaddress");
		String emergancyContName = request.getParameter("emargencycontatct");
		String emergancyContAddress = request.getParameter("emargencyaddress");
		String emargancyContWorkPlace = request.getParameter("emargancyworkplaceaddress");
		
		
	}

}
