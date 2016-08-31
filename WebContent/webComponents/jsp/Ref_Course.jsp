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
            		<div style="float:left;width:15%">
                		<h3>Course Referance<h3>
                    </div>
                    <div style="float:right;width:85%">
	                    <form method="get" action="/search" id="search">
	                        <input style="margin-top:12px;" name="q" type="text" size="40" placeholder="Search..." />
	                    </form>
                    </div>
                 </div>
           	</div>
            <table id="users">
            	<thead>
                 	<tr>
                 		<th style="display:none;">ID</th>
                     	<th>Course Code</th>
                    	<th>Course Name</th>
                     	<th>Academic Year</th>
                     	<th>Academic Semester</th>
                     	<th>Number of Credits</th>
                     	<th>Lecturer In Charge</th>
                     	<th>Course Statues</th>
             	</thead>
             	<tbody>
	                        	
                	<%
						try {
							PrintWriter writer = response.getWriter();
							Connection con = JDBCUtil.getConnection();
							String sql = "SELECT * FROM ref_course";
							PreparedStatement ps = con.prepareStatement(sql);
							String is_active = "Active";
							ResultSet rs = ps.executeQuery();
						
							while (rs.next()) {
								System.out.println(!is_active.equals(rs.getString(4)));
								if(!is_active.equals(rs.getString(8))){
									is_active = "Inactive";
								}
								
								out.print("<tr onclick=javascript:showRowRefCourse(this);>"
										+"<td style=\"display:none;\">"
										+ rs.getInt(1)
										+ "</td>"
										+"<td>"
										+ rs.getString(2)
										+ "</td>"
										+ "<td>"
										+ rs.getString(3)
										+ "</td>"
										+ "<td>"
										+ rs.getString(4)
										+ "</td>"
										+ "<td>"
										+ rs.getString(5)
										+ "</td>"
										+ "<td>"
										+ rs.getString(6)
										+ "</td>"
										+ "<td>"
										+ rs.getString(7)
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

            <div style="background-color:#D3D3D3;width:100%;height:180px;margin-top:50px;border-radius:20px;padding-bottom:20px;">

            	<form style="padding-left:20px;padding-top:30px" action="../../ServletRefCourse" method="post">
             		<text style="display:none;">ID</text>
	                 <input style="margin-left:63px;display:none;" name="course_id" id="course_id"></input>
	                 <text>Course Code</text>
	                 <input style="margin-left:63px" name="course_name_code" id="course_code"></input>
	                 <text style="margin-left:40px" >Course Name</text>
	                 <input style="margin-left:85px" name="course_name" id="course_name" ></input>
	                 <br></br>
	                 <text>Academic Year</text>
	                 <input style="margin-left:50px" name="academic_year" id="academic_year"></input>
	                 
	                 <text style="margin-left:40px">Academic Semester</text>
	                 <input style="margin-left:45px" name="academic_semester" id="academic_semester"></input><br><br>
	                 
	                 <text style="margin-left:3px">Lecturer In Charge</text>
	                 <input style="margin-left:20px" name="lec_in_charge" id="lec_in_charge"></input>
	                        
					<text style="margin-left:40px">Number of Credits</text>
	                 <input style="margin-left:50px" name="num_credits" id="num_credits"></input>
	                 
	                 <input style="margin-left:60px" type="radio" name="active" id="active" value="Active"> Active </input>
	                 <input style="margin-left:20px"type="radio" name="active" id="inactive" value="Inactive"> InActive</input><br><br>
	
	                 <button type="submit" class="button" name="btnSubmit" value="btnAdd" style="margin-left:700px"> Add</button>
	                 <button type="submit" class="button" name="btnSubmit" value="btnModify"> Modify</button>
                 
             	</form>
       		</div>	
		</div>
		<script type="text/javascript">
			function showRowRefCourse(row) {
				var thisRow = row.cells;
				document.getElementById("course_id").value = thisRow[0].innerHTML;
				document.getElementById("course_code").value = thisRow[1].innerHTML;
				document.getElementById("course_name").value = thisRow[2].innerHTML;
				
				document.getElementById("academic_year").value = thisRow[3].innerHTML;
				document.getElementById("academic_semester").value = thisRow[4].innerHTML;
				document.getElementById("lec_in_charge").value = thisRow[6].innerHTML;
				document.getElementById("num_credits").value = thisRow[5].innerHTML;
				if(thisRow[7].innerHTML == "Active"){
					document.getElementById("active").checked = true;
				}
				if(thisRow[7].innerHTML == "Inactive"){
					document.getElementById("inactive").checked = true;
				}
			}
	    	//To Fill Input Feilds in System User Referance Data page
	    	function showRowRefUser(row) {
				var thisRow = row.cells;
				document.getElementById("id").value = thisRow[0].innerHTML;
				document.getElementById("user_code").value = thisRow[1].innerHTML;
				document.getElementById("user_description").value = thisRow[2].innerHTML;
				if(thisRow[3].innerHTML == "Active"){
					document.getElementById("active").checked = true;
				}
				if(thisRow[3].innerHTML == "Inactive"){
					document.getElementById("inactive").checked = true;
				}
			}
	</script>
<%@include file="Footer.jsp" %>