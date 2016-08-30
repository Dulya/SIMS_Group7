<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    </head>
    <body >
        <ul >
            <li id="li-title"> <font style="color:white;">SIMS</font> </li>
            <li><a  href="#"><img id="titleimg" src="../images/grad.jpg"/></li>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn" onclick="myFunction1()"><img id="userimg" class="dropbtn"  src="../images/default-user.png"/></a>
                <div class="dropdown-content" id="myDropdown">
                    <a href="#">Profile</a>
                    <a href="../../ServletSignOut">Sign Out</a>
                </div>
            </li>
        </ul>
        <div id="leftDiv" style="width: 273px">
            <aside class="accordion">
                <h1>Applications</h1>
                <div class="opened-for-codepen">
                    <a href="StudentRegiApplication.jsp"><h2>Registration</h2><div></div></a>
                    <a href="LoginRegistrationForm/index.html"><h2>Bursary Application</h2><div></div></a>
                    <a href="IdCardApplication.html"><h2>Student ID Application</h2><div></div></a>
                    <div></div>
                </div>

                <h1>Reference Data</h1>
                <div class="opened-for-codepen">
                    <a href="Ref_User.jsp"><h2 >User Type</h2> <div></div></a>
                    <a href="Ref_Course.jsp"><h2>Courses</h2>	<div></div></a>
                </div>

                <h1>Results Center</h1>
                <div class="opened-for-codepen">
                    <a href="404.html"><h2>Upload Result Sheets</h2><div></div></a>
                    <a href="404.html"><h2>View Results</h2><div></div></a>
                    <h2></h2><div></div>
                </div>
                
                <h1>Report Center</h1>
                <div class="opened-for-codepen">
                    <a href="404.html"><h2>View Reports</h2><div></div></a>
                    <a href="404.html"><h2>View Graphs</h2><div></div></a>
                    <h2></h2><div></div>
                </div>
        	</aside>
        </div>
</div>
<div id="rightDiv" >
	<img alt="" src="../images/homeImage.jpg" style="width: 1245px; height: 600px">


                                <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

                                <script src="../js/accordion.js"></script>
                                </body>
                                </html>

