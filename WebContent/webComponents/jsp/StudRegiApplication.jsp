<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.sims.util.JDBCUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <Title>SIMS - Main Page</Title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Registration of UCSC" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />

        <link rel="shortcut icon" href="../favicon.ico"> 

        <link href="../css/accordion.css" rel="stylesheet" type="text/css" />
        <link href="../css/MainPage.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="../css/demo.css" />
        <link rel="stylesheet" type="text/css" href="../css/style.css" />
        <link rel="stylesheet" type="text/css" href="../css/animate-custom.css" />
        <link rel="stylesheet" type="text/css" href="../css/UserTypeForm.css" />
        <link href='http://fonts.googleapis.com/css?family=News+Cycle:400,700' rel='stylesheet' type='text/css'>
        <link href="http://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
        <script src="../js/MainPage.js"></script>
         <script src="../js/Registration.js"></script>
         
           <style>
        
        	        	
#title{
    background: -webkit-repeating-linear-gradient(-45deg, 
	rgb(18, 83, 93) , 
	rgb(18, 83, 93) 20px, 
	rgb(64, 111, 118) 20px, 
	rgb(64, 111, 118) 40px, 
	rgb(18, 83, 93) 40px);
	margin-top: 10px;
	
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
        
        <%
        	Connection con = JDBCUtil.getConnection();
        	String sqlQuery = "SELECT MAX(id) FROM student_regi_application";
        	PreparedStatement ps = con.prepareStatement(sqlQuery);
        	ResultSet rs = ps.executeQuery();
        	int id = 0;
        	while(rs.next()){
        		id = rs.getInt(1);
        		
            	System.out.println("End of the java snippet");
        	}
        	id +=1;
        	id += 1000;
        	String stdTempId = Integer.toString(id);
        	stdTempId = "TEMP" + stdTempId;
        	System.err.println(stdTempId);
        %>
        
        <script type="text/javascript">
		function disableCS() {
			if(document.getElementById("CS").checked){
				document.getElementById("IS").disable = true;
			}
			else{
				document.getElementById("IS").disable = false;
			}
		}
		function disableIS() {
			if(document.getElementById("IS").checked){
				document.getElementById("CS").disable = true;
			}
			else{
				document.getElementById("CS").disable = false;
			}
		}
		function getLastName() {
	    	
	    	var nameWithInitials = document.getElementById("namewithinitials").value;
	    	var arry = nameWithInitials.split(" ");
	    	var initials = arry[0];
	        document.getElementById("initials").value = initials.toUpperCase();;
	        arry.splice(0,1);
	        var lastName = arry.join(' ');
	        document.getElementById("lastname").value = lastName.toUpperCase();;
	        //alert("Last Name: "+lastName+ " - " + initials);
	        getDate();

		}
	    function setDOBviaNic(){
			var nic=document.getElementById("nic").value;
			var nicYear="19".concat(nic.substring(0,2));
			var nicDays=nic.substring(2,5);
			var month="";
			var feb;
			if(nicDays>=501 && nicDays<= 866){
				nicDays=nicDays-500;
			}
			 if ((nicYear % 4) == 0){
		         feb = 31 + 29;
			 } else{
		         feb = 31 + 28;
		         if (nicDays>feb){
		        	 nicDays=nicDays-1;
		         }	                    
			 }
		var dayId;
			 nicDays=Number(nicDays);
			 if (nicDays <= 31){
				 month="01 ";
			}else if (nicDays <= feb){
				 month="02";
				nicDays =Number(nicDays) - 31;
			 }else if (nicDays <= (feb + 31)){
				 month="03";
				 nicDays = nicDays - feb;
			 }else if (nicDays <= (feb + 61)){
				 month="04";
				 nicDays = nicDays - (feb + 31);
			 }else if (nicDays <= (feb + 92)){
				 month="05";
				nicDays = nicDays - (feb + 61);
			 }else if (nicDays <= (feb + 122)){
				 month="06";
				nicDays = nicDays - (feb + 92);
			 }else if (nicDays <= (feb + 153)){
				 month="07";
				nicDays = nicDays - (feb + 122);
			 }else if (nicDays <= (feb + 184)){
				 month="08";
				 nicDays = nicDays - (feb + 153);
			 }else if (nicDays <= (feb + 214)){
				 month="09";
				nicDays = nicDays - (feb + 184);
			 }else if (nicDays <= (feb + 245)) {
				 month="10";
				 nicDays = nicDays - (feb + 214);
			 }else if (nicDays <= (feb + 275)){
				 month="11";
				nicDays = nicDays - (feb + 245);
			 }else if (nicDays <= (feb + 306)){
				 month="12";
				 nicDays = nicDays - (feb + 275);
			 }
			
			 if(nicDays.length==2){
				 nicDays="0"+nicDays;
			 }
			
			 document.getElementById("dob").value = nicDays+"/"+month+"/"+nicYear ;
			 
		}
	    function getDate(){
	    	var today = new Date();
	    	var dd = today.getDate();
	    	var mm = today.getMonth()+1; //January is 0!

	    	var yyyy = today.getFullYear();
	    	if(dd<10){
	    	    dd='0'+dd
	    	} 
	    	if(mm<10){
	    	    mm='0'+mm
	    	} 
	    	var today = dd+'/'+mm+'/'+yyyy;
	    	document.getElementById("submitted_date").value = today;
		}
	</script>
    </head>
<body >
	<ul class="topul">
      
       <li><img id="titleimg" src="../images/UCSClogo.png"/></li> 
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

	<div id="rightDiv" style="width:82% ;float:right">
	<header>
                        	<h1 id="title" align="center">Application for Registration</h1>
                        </header>
		<form action="../../ServletStudentRegiApplication" autocomplete="off" method="post">
     		<div style="width:50%;height:400px;float:left;">
                 <div id="container_demo" style="margin-left:0px;padding-left:50px">
                            <a class="hiddenanchor" id="toregister"></a>
                            <a class="hiddenanchor" id="tologin"></a>
                            <div id="wrapper">
                                <div id="login" class="animate form" style="height:750px;float:right;"> 
                                <p > 
                                            <label style="width:100px" for="username" class="uname"> Select photo </label>
                                        </p><br>
                                    <div style="margin-left:20px;" id="photo">
                                        <input style="height:100px;width:220px" id="username" name="username" required="required" type="file">
                                    </div>

                                    <div  style="margin-top:10px;" id="selectcourse" style=";" >
                                   
                                        <p > 
                                            <label style="width:100px" for="username" class="uname"> Select your course </label>
                                        </p><br>
                                    </div>
                                        <p class="computerscience"> 
                                            <input type="checkbox" onclick="disableCS()" name="course" id="CS" value="Computer Science"> 
                                            <label for="loginkeeping">Computer Science</label>
                                        </p> 
                                        <p class="informationsystem"> 
                                            <input type="checkbox" onclick="disableIS()" name="course" id="IS" value="Infromation Systems"> 
                                            <label for="loginkeeping">Information System</label>
                                        </p>
                                        <div style="margin-top: 20px;">
                                        <p> 
                                            <label for="username" class="uname" data-icon="u"> Name with intials</label>
                                            <input align="right" id="namewithinitials" name="namewithinitials" required="required" type="text" placeholder="Use Period (.) To Separete Initals ex: A.B Silva" style="margin-bottom: 6px;" onblur="getLastName()">
                                        </p>
                                        <p> 
                                            <label for="username" class="uname" data-icon="u"> Applicant's Full name </label>
                                            <input id="fullname" name="fullname"  required="required" type="text" placeholder="Enter Your Full Name">
                                        </p>
                                        
                                        <p> 
                                            <label for="username" class="uname" data-icon="u" style="display:none;">Applicant's Last Name </label>
                                            <input id="lastname" name="lastname" type="text" placeholder="Last Name" style="display:none;">
                                        </p>
                                        
                                        <p> 
                                            <label for="username" class="uname" data-icon="u" style="display:none;">Applicant's Initials </label>
                                            <input id="initials" name="initials" type="text" placeholder="Initials" style="display:none;">
                                        </p> 
                                        
                                        <p> 
                                            <label for="username" class="uname" data-icon="u" style="display:none;">Submitted Date </label>
                                            <input id="submitted_date" name="submitted_date" type="text" placeholder="submited date" style="display:none;">
                                        </p>
                                        
                                        <p> 
                                            <label for="username" class="uname" data-icon="u"> Permenent address </label>
                                            <input id="permanentaddress" name="permanentaddress" required="required" type="text" placeholder="Enter your address" >
                                        </p>
                                        <p> 
                                            <label for="username" class="uname" data-icon="e"> Email Address </label>
                                            <input id="email" name="email" required="required" type="text" placeholder="example@gmail.com">
                                        </p>
                                        <p> 
                                            <label for="username" class="uname" data-icon="p" style="margin-top:50px"> NIC Number </label>
                                            <input id="nic" name="nic" required="required" type="text" placeholder="xxxxxxxxxV" maxlength="10" minlength="9" onblur="setDOBviaNic()">
                                        </p>
                                        <p> 
                                            <label for="username" class="uname" data-icon="u"> Date of birth </label>
                                            <input id="dob" name="dob" required="required" type="text" placeholder="DD/MM/YYYY" maxlength="10" minlength="10">
                                        </p>
                                        
                                        <p> 
                                            <label for="username" class="uname" data-icon="u" style="display:none;">Temparary Id </label>
                                            <input id="tempId" name="tempId" type="text" placeholder="Initials" value="<%=stdTempId%>" style="display:none;">
                                        </p> 
                                        
                                        <div >
                                        <p> 
                                            <label for="username" id="province" class="uname" style="width: 20px;" > Province </label>
                                            <select name="province" class="pro-select" style="float:right;">
                                                <option value="Select">---Select---</option>
                                                <option value="Central">Central</option>
                                                <option value="Eastern">Eastern</option>
                                                <option value="Northern">Northern</option>
                                                <option value="North Central">North Central</option>
                                                <option value="North Western">North Western</option>
                                                <option value="Sabaragamuwa">Sabaragamuwa</option>
                                                <option value="Southern">Southern</option>
                                                <option value="Uva">Uva</option>
                                                <option value="Western">Western</option>
                                            </select>
                                        </p>
                                        </div>
                                        
                                </div>

                                    
                        </div>
                        
                    </div>
                </div>  
     			</div>
	 			<div style="width:50%;height:400px;float:right;">
                	 <div id="container_demo" style="margin-left:0px;">
                   
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    
                        <div id="wrapper1">
                            <div id="login2" class="animate form" style="height:752px">
                                <!--<form action="#" autocomplete="on">-->  
                                <div style="float:right;margin-top:10px">
                                    <p> 
                                        <label for="username" class="uname" data-icon="u">Fixed Line</label>
                                        <input type="text" name="fixedline" placeholder="Enter your number" size="10" style="width:90%;padding-left: 30px;">
                                    </p>
                                    <p> 
                                        <label for="username" class="uname" data-icon="u" >Race</label>
                                        <input type="text" name="race" placeholder="Enter your number" size="10" style="width:90%;padding-left: 30px;">
                                    </p>
                                    <p> 
                                        <label for="username" class="uname" data-icon="u" >Z-Score</label>
                                        <input type="text" name="z_score" placeholder="Enter your number" size="10" style="width:90%;padding-left: 30px;">
                                    </p>
                                </div>
                                <div style="float:left;width:235px;margin-top:10px">
                                    <p> 
                                        <label for="username" class="uname" data-icon="u">Mobile Number</label>
                                        <input type="text" name="mobilenumber" placeholder="Enter Your Mobile Number" size="10" style="width:75%;padding-left: 30px;">
                                    </p>
                                    <p> 
                                        <label for="username"class="uname" data-icon="u" >Religion</label>
                                        <input type="text" name="religion" placeholder="Enter your number" size="10" style="width:75%;padding-left: 30px;" >
                                    </p>
                                    <p> 
                                        <label for="username" class="uname" data-icon="u" >G.C.E.(A/L) Index No</label>
                                        <input type="text" name="al_index" placeholder="Enter your number" size="10" style="width:75%;padding-left: 30px;">
                                    </p>
                                </div>
                            

                          
                            

                               

                                
                            
                            
                                <div style="float:left;margin-top:10px">
                                    <p> 
                                        <label for="username" class="uname" data-icon="u" >Civil Status</label>
                                        <input type="text" name="civilstatues" placeholder="Married/Unmarried" size="10" style="width:95%;padding-left: 32px;">
                                    </p>   
                                    <div style="height:40px;margin-top:10px">
                                        <label for="username" class="uname" >Father's /Guardian's :</label>
                                        <div style="width:70%;height:60px; float:right;">
                                            <p>
                                                <label for="username"class="uname" data-icon="u" >Name</label>
                                                <input type="text" name="guardianname" placeholder="Enter Father's /Guardian's name" size="10" style="padding-left: 32px;">
                                            </p>
                                        </div>
                                        <div style="width:70%;height:60px; float:right;margin-top:10px">
                                            <p>
                                                <label for="username" class="uname" data-icon="u" >Occupation</label>
                                                <input type="text" name="guardianoccupation" placeholder="Enter your number" size="10" style="padding-left: 32px;">
                                            </p>
                                        </div>
                                        <div style="width:70%; float:right;height:80px;margin-top:10px">
                                            <p>
                                                <label for="username" class="uname" data-icon="u" >Address of place of work</label>
                                                <input type="text" name="guardianworkplaceaddress" placeholder="Enter your number" size="10" style="padding-left: 32px;">
                                            </p>
                                        </div>
                                    </div>
                                

                                    <div >
                                        <div style="height:30px;float:left;">
                                            <label for="username" class="uname" >In Case of Emergency please inform:</label>
                                        </div>
                                        <div style="width:70%;height:60px; float:right;margin-top:10px">
                                            <p>
                                                <label for="username" class="uname" data-icon="u" >Name</label>
                                                <input type="text" name="emargencycontatctname" placeholder="Emergancy Contact's Name" size="10" style="padding-left: 32px;">
                                            </p>
                                        </div>
                                        <div style="width:70%;height:60px; float:right;margin-top:10px">
                                            <p>
                                                <label for="username" class="uname" data-icon="u" >Telephone No</label>
                                                <input type="text" name="emargencycontactnumber" placeholder="Emergancy Contact's Telephone Number" size="10" style="padding-left: 32px;">
                                            </p>
                                        </div>
                                        <div style="width:70%; height:80px; float:right;margin-top:10px">
                                            <p>
                                                <label for="username" class="uname"class="uname" data-icon="u" >Address of place of work</label>
                                                <input type="text" name="emargancyworkplaceaddress" placeholder="Emergancy Contact's Work Place" size="10" style="padding-left: 32px;">
                                            </p>
                                        </div>
                                     <button class="botton" type="submit" style="float:right;width:40%;height:30px;top:100px;">Submit</button>  
                                    </div>
                                </div>
                            </div>
                        </div>      
                        
                            </div>
		</div>
		</form>
		</div>
	</body>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
	<script src="../js/Registration.js"></script>

	<script src="../js/accordion.js"></script>
</html>