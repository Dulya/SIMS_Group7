package com.sims.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Session;

/**
 * Servlet implementation class ServletSignOut
 */
public class ServletSignOut extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
        response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
        response.setDateHeader("Expires", 0); // Proxies.
        
        response.setHeader("Pragma","no-cache"); 
        response.setHeader("Cache-Control","no-store"); 
        response.setHeader("Expires","0"); 
        response.setDateHeader("Expires",-1);
        
        request.getSession().invalidate();
        
		response.sendRedirect("index.jsp");
		System.out.println("User Loggied Out! \n");
	}

}
