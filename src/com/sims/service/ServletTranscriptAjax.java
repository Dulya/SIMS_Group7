package com.sims.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.sims.service.RequestDataBinder;

/**
 * Servlet implementation class ServletTranscript
 */
//@WebServlet("/ServletTranscript")
// This Controller is not finished
public class ServletTranscriptAjax extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String nicNo = (String)request.getSession(false).getAttribute("nic_no");
		//System.out.println("Servlet Nic Num" + nicNo);
		//request.getRequestDispatcher("jsp/Transcript.jsp").forward(request, response);
		
		String nicNo = (String)request.getSession(false).getAttribute("nic_no");
		System.out.println(nicNo);
		request = RequestDataBinder.bindResults(request,"933283780V");
		
		String ouputJSON = "some text";
	   try{
		   String [] ar={"first_first","first_second","second_first","second_second","third_first","third_second","fourth_first","fourth_second"};
		   System.out.println("gggggggg");

		   List<String[][]> ss=new ArrayList<String[][]>();
		   JSONArray obj = new JSONArray();
			   for(int i=0;i<ar.length;i++){
				  String[][] tt = (String[][])request.getAttribute(ar[i]);
				  if(tt!=null){
					  System.out.println(ar[i]);
					  JSONArray list = new JSONArray();
					  for(int j=0;j<tt.length;j++){
							//[SCS1101, Data Structures and Algorithms I, B+]
						  if(!(tt[j][2].equals("N_A"))){
						  	JSONObject obj2 = new JSONObject();
						  	obj2.put("code", tt[j][0]);
						  	request = RequestDataBinder.getCourseCredits(request,tt[j][0]);
						  	obj2.put("name", tt[j][1]);
						  	obj2.put("grade", tt[j][2]);
						  	obj2.put("credits", request.getAttribute("credits"));
						  	list.add(obj2);
						  }
						  }
					  if(list.isEmpty()==false){
						  obj.add(list);
						  
					  
					  }
						 
				   }
				   

				   ouputJSON = obj.toJSONString();
				  
				  
				
				  }
				  
			   System.out.println(ouputJSON);
			   
		   
		   
	    }catch(Exception e){
	        /*Any code*/
	    }catch(Throwable t){
	        /*Any code*/
	    }
	    
		
	    response.setContentType("text/plain");  // Set content type of the response so that jQuery knows what it can expect.
	    response.setCharacterEncoding("UTF-8"); 
	    response.getWriter().write(ouputJSON); 
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
