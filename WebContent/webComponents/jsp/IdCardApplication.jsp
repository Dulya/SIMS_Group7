<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <Title>SIMS - Main Page</Title>
        <link href="accordion.css" rel="stylesheet" type="text/css" />
        <link href="MainPage.css" rel="stylesheet" type="text/css" />	
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
    </head>
    <body >
       <ul class="topul">
      
       <li><a href="#"><img id="titleimg" src="../images/UCSClogo.png"/></li>
       
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

<div id="rightDiv" style="width:82%;float:right">
  <header>
                        	<h1 id="title" align="center">Application for Student ID</h1>
                        </header>
     <div style="width:45%;height:400px;float:left;padding-left:40px">
                 <div id="container_demo" style="margin-left:0px;padding-left:5px">
                
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form" style="height:580px">
                       
                           <form  autocomplete="on"> 
                                

                                 <p> 
                                    <label for="username" class="uname"> Select your course </label>
                                </p><br>
                                <p class="computerscience"> 
                                    <input type="checkbox" onclick="disableCS()" name="loginkeeping" id="CS" value="loginkeeping"> 
                                    <label for="loginkeeping">Computer Science</label>
                                </p> 
                                <p class="informationsystem"> 
                                    <input type="checkbox" onclick="disableIS()" name="loginkeeping" id="IS" value="loginkeeping"> 
                                    <label for="loginkeeping">Information System</label>
                                </p>
                                <p> 
                                    <label for="username" class="uname" data-icon="u"> Applicant's Full name </label>
                                    <input align="right" id="username" name="username" required="required" type="text" placeholder="Rev./Mr./Miss./Mrs : Enter your name">
                                </p>
                                <p> 
                                    <label for="username" class="uname" data-icon="u"> Name with intials </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="Enter your name">
                                </p>
                                <p> 
                                    <label for="username" class="uname" data-icon="u"> Permenent address </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="Enter your address">
                                </p>
                                 <p> 
                                    <label for="username" class="uname" data-icon="u"> Temporary address during the university education period(if any) </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="Enter your temporary address">
                                </p>
                                <p> 
                                    <label for="username" class="uname" data-icon="e"> Email Address </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="example@gmail.com">
                                </p>
                                <p> 
                                    <label for="username" class="uname" data-icon="u"> Date of birth </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="DD/MM/YYYY" maxlength="10" minlength="10">
                                </p>
                                
            
        
                                <!--<p> 
                                    <label for="username" class="uname" data-icon="u" > Permenent Address </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="Enter your address"/>
                                </p>-->
                                <!--<p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="Enter the password here" /> 
                                </p>-->
                                <!--<p class="change_link">
                                    Already a member
                                    <a href="#toregister" class="to_register">Sign up</a>
                                </p>-->
                            </form>
                        </div>

                            
                        </div>
                        
                    </div>
               
     </div>
	 <div style="width:48%;height:400px;float:right;padding-left:10px">
                
                <div id="container_demo" style="margin-left:0px;">
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login2" class="animate form" style="height:580px">
                            <form action="file:///C:/Users/kanishka/Desktop/IdApplication/IdCardApplication.html/mysuperscript.php" autocomplete="on"> 
                                <div style="width:40%;height:655px;float:right;padding-left:20px">
                                    <p> 
                                        <label for="username" class="uname" >Fixed Line</label>
                                        <input id="username" name="username" required="required" type="text" placeholder="Enter your number">
                                    </p>
                                </div>
                                <div style="width:40%;height:655px;float:left;">
                                    <p> 
                                        <label for="username" class="uname" >Mobile Number</label>
                                        <input type="text" name="username" placeholder="Enter your number" size="10">
                                    </p>
                                    <p> 
                                    <label for="username" class="uname" data-icon="p"> NIC Number </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="xxxxxxxxxV" maxlength="10" minlength="9">
                                </p>
                                 <p> 
                                    <label for="username" class="uname"> Incase of emergency, please inform </label>
                                </p>
                                <p>
                                    <label for="username" class="uname" data-icon="u"> Name </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="Enter name">
                                </p>
                                <p>
                                    <label for="username" class="uname" data-icon="u"> Address </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="Enter address">
                                </p>
                                <p>
                                    <label for="username" class="uname" data-icon="u"> Phone no</label>
                                    <input id="username" name="username" required="required" type="text" placeholder="Enter phone number">
                                </p>
                                <p>
                                    <label for="username" class="uname" data-icon="u"> Photo</label>
                                    <input id="file" name="as" required="required" type="file" placeholder="Enter your photo">
                                </p>
                    
                                <p>I certify that above particulars are true and correct.
                                </p>
                                <p>
                                    <label for="username" class="uname" > Date</label>
                                    <input id="Date" name="username" required="required" type="Date" placeholder="Enter date">
                                </p>
                                
                                </div>
                            </form>
                        </div>
                    </div>       
				</div>
               
     </div>
</div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

 <script src="../js/accordion.js"></script>
</body>
</html>