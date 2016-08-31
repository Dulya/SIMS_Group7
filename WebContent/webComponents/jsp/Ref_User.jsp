<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.PrintWriter"  %>
<%@ page import="java.util.ArrayList"  %>
<%@ page import="java.sql.Connection"  %>
<%@ page import="java.sql.SQLException"  %>
<%@ page import="java.sql.PreparedStatement"  %>
<%@ page import="java.sql.ResultSet"  %>
<%@ page import="com.sims.util.JDBCUtil"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <Title>SIMS - Main Page</Title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Registration of UCSC" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
		<script src="../css/tst.js"></script>
        <link rel="shortcut icon" href="../favicon.ico"> 
		 <link type="text/css" href="../css/main.css" rel="stylesheet">
        <link type="text/css" href="../css/table.css" rel="stylesheet">
        <link href="../css/accordion.css" rel="stylesheet" type="text/css" />
        <link href="../css/MainPage.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="../css/demo.css" />
        <link rel="stylesheet" type="text/css" href="../css/style.css" />
        <link rel="stylesheet" type="text/css" href="../css/animate-custom.css" />
        <link rel="stylesheet" type="text/css" href="../css/UserTypeForm.css" />
        <link href='http://fonts.googleapis.com/css?family=News+Cycle:400,700' rel='stylesheet' type='text/css'>
        <link href="http://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
        <script src="../js/MainPage.js"></script>
        
        <style>
        	/** For the moment only webkit supports the background-clip:text; */
#title{
    background: -webkit-repeating-linear-gradient(-45deg, 
	rgb(18, 83, 93) , 
	rgb(18, 83, 93) 20px, 
	rgb(64, 111, 118) 20px, 
	rgb(64, 111, 118) 40px, 
	rgb(18, 83, 93) 40px);
	
	-webkit-text-fill-color: transparent;
	-webkit-background-clip: text;
}
#title:after{
	content: ' ';
	display: block;
	width: 100%;
	height: 2px;
	margin-top: 10px;
	background: -moz-linear-gradient(left, rgba(147,184,189,0) 0%, rgba(147,184,189,0.8) 20%, rgba(147,184,189,1) 53%, rgba(147,184,189,0.8) 79%, rgba(147,184,189,0) 100%); 
	background: -webkit-gradient(linear, left top, right top, color-stop(0%,rgba(147,184,189,0)), color-stop(20%,rgba(147,184,189,0.8)), color-stop(53%,rgba(147,184,189,1)), color-stop(79%,rgba(147,184,189,0.8)), color-stop(100%,rgba(147,184,189,0))); 
	background: -webkit-linear-gradient(left, rgba(147,184,189,0) 0%,rgba(147,184,189,0.8) 20%,rgba(147,184,189,1) 53%,rgba(147,184,189,0.8) 79%,rgba(147,184,189,0) 100%); 
	background: -o-linear-gradient(left, rgba(147,184,189,0) 0%,rgba(147,184,189,0.8) 20%,rgba(147,184,189,1) 53%,rgba(147,184,189,0.8) 79%,rgba(147,184,189,0) 100%); 
	background: -ms-linear-gradient(left, rgba(147,184,189,0) 0%,rgba(147,184,189,0.8) 20%,rgba(147,184,189,1) 53%,rgba(147,184,189,0.8) 79%,rgba(147,184,189,0) 100%); 
	background: linear-gradient(left, rgba(147,184,189,0) 0%,rgba(147,184,189,0.8) 20%,rgba(147,184,189,1) 53%,rgba(147,184,189,0.8) 79%,rgba(147,184,189,0) 100%); 
}
        </style>
    </head>
    <body>
        <ul class="topul" >
           
            <li><a  href="#"><img id="titleimg" src="../images/UCSClogo.png"/></li>
     <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn" onclick="myFunction1()"><img id="userimg" class="dropbtn userIcon"  src="../images/default-user.png"/></a>
                <div class="dropdown-content" id="myDropdown">
                    <a href="#">Profile</a>
                    <a href="../../ServletSignOut">Sign Out</a>
                </div>
            </li>
        </ul>
	<!-- Including left div which contains the Side Menu -->
		<%@include file="SideMenu.jsp" %>
		<!-- end of include -->
	<div id="rightDiv" >
    	<div>
        	<div id="topDiv">
            	<div style="float:left;width:10%">
               		<h3>User Type<h3>
               	</div>
                <div style="float:right;width:90%">
	                <form method="get" action="/search" id="search">
	                    <input style="margin-top:12px;" name="q" type="text" size="40" placeholder="Search..." />
	                </form>
                </div>
          	</div>
      	</div>
        <table id="users">
        	<thead>
           		<tr>
                    <th>User Type Code</th>
                    <th>Description</th>
                    <th>Status</th>
                    <th style='display: none;'>ID</th>
                </tr>
            </thead>
            <tbody>            
            	<%
					try {
						PrintWriter writer = response.getWriter();
						Connection con = JDBCUtil.getConnection();
						String sql = "SELECT * FROM ref_user_type";
						PreparedStatement ps = con.prepareStatement(sql);
						String is_active = "Active";
						ResultSet rs = ps.executeQuery();
						
						while (rs.next()) {
							System.out.println(!is_active.equals(rs.getString(4)));
							if(!is_active.equals(rs.getString(4))){
								is_active = "Inactive";
							}
							
							out.print("<tr onclick=javascript:showRowRefUser(this);>"
									+"<td style='display: none;'>"
									+ rs.getString(1)
									+ "</td>"
									+"<td>"
									+ rs.getString(2)
									+ "</td>"
									+ "<td>"
									+ rs.getString(3)
									+ "</td>"
									+ "<td>"
									+ is_active
									+ "</td>"
									+ "</tr>"
									);
							
						}
						
					} catch (SQLException e) {
						System.err.println("Sql error");
						System.out.println(e.getMessage());
					} 
				%>                            
	        </tbody>             
      	</table>

        <div style="background-color:#D3D3D3;width:100%;height:120px;margin-top:50px;border-radius:20px">
	       <form style="padding-left:20px;padding-top:30px" action="../../ServletRefUserType" method="post">
				<text type="hidden">ID</text>
	           <input style="margin-left:20px; display: none;" name="id" id="id"></input>
	           <text>User Type Code</text>
	           <input style="margin-left:20px" name="user_code" id="user_code"></input>
	           <text style="margin-left:60px">Description</text>
	           <input style="margin-left:60px" name="user_description" id="user_description"></input>
	
	           <input style="margin-left:100px"t type="radio" name="user_statues" id="active" value="Active" > Active </input>
	           <input style="margin-left:20px"type="radio" name="user_statues" id="inactive" value="Inactive"> InActive</input><br><br>
	
	           <button style="margin-left:700px" type="submit" class="button" name="btnSubmit" value="btnAdd"> Add</button>
	           <button type="submit" class="button" name="btnSubmit" value="btnModify"> Modify</button>
	           <button type="submit" class="button" name="btnSubmit" value="btnDelete"> Delete</button>
	       </form>
     	</div>
     </div>
<%@include file="Footer.jsp" %>