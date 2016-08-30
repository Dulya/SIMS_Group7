package com.sims.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sims.service.ServiceDAO;

/**
 * Servlet implementation class ServletRefUserType
 */
//@WebServlet("/ServletRefUserType")
public class ServletRefUserType extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int result = 0;
		String  id = request.getParameter("id");
		String formAction = request.getParameter("btnSubmit");
		String userCode = request.getParameter("user_code");
		String userType = request.getParameter("user_description");
		String userStatues = request.getParameter("user_statues");
		
		if(formAction.equals("btnAdd")){
			result = ServiceDAO.refUserTypeAdd(userCode, userType, userStatues);
			response.sendRedirect("webComponents/jsp/Ref_User.jsp");
		}
		if(formAction.equals("btnDelete")){
			result = ServiceDAO.refUserTypeDelete(id);
			response.sendRedirect("webComponents/jsp/Ref_User.jsp");
		}
		if(formAction.equals("btnModify")){
			result = ServiceDAO.refUserTypeModify(userCode, userType, userStatues,id);
			response.sendRedirect("webComponents/jsp/Ref_User.jsp");
		}
	}

}
