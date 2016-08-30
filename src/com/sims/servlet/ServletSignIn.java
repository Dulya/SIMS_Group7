package com.sims.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sims.service.ServiceDAO;

/**
 * Servlet implementation class ServletSignIn
 */
//@WebServlet("/ServletSignIn")
public class ServletSignIn extends HttpServlet {

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// here we get the parameters from the web page 
		// pass it to loginAuthenticaton if success redirect to indexpage
		String username = request.getParameter("user_name");
		String userpwd = request.getParameter("user_password");
		ArrayList info = ServiceDAO.loginAuthenticaton(username, userpwd);
		if(info != null){
			HttpSession session = request.getSession();
			session.setAttribute("user_id", info.get(0));
			session.setAttribute("user_type",info.get(1));
			session.setAttribute("user_first_name",info.get(2));
			session.setAttribute("user_last_name",info.get(3));
			System.out.println("session attribute User Id: " + info.get(0));
			response.sendRedirect("webComponents/jsp/Ref_Course.jsp");
			
		}
		else{
			System.out.println("Redirected to login!");
			response.sendRedirect("login.html");
		}
	}

}
