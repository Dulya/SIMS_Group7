<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<Title>SIMS - Main Page</Title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Registration of UCSC" />
<meta name="keywords"
	content="html5, css3, form, switch, animation, :target, pseudo-class" />
<meta name="author" content="Codrops" />

<link rel="shortcut icon" href="../favicon.ico">
<link type="text/css" href="css/main.css" rel="stylesheet">
<link type="text/css" href="css/table.css" rel="stylesheet">
<link href="css/accordion.css" rel="stylesheet" type="text/css" />
<link href="css/MainPage.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
<link rel="stylesheet" type="text/css" href="css/UserTypeForm.css" />
<link href='http://fonts.googleapis.com/css?family=News+Cycle:400,700'
	rel='stylesheet' type='text/css'>
<link href="http://fonts.googleapis.com/css?family=Lobster"
	rel="stylesheet" type="text/css">
<script src="js/MainPage.js"></script>

<style>
/** For the moment only webkit supports the background-clip:text; */
#title {
	background: -webkit-repeating-linear-gradient(-45deg, rgb(18, 83, 93),
		rgb(18, 83, 93) 20px, rgb(64, 111, 118) 20px, rgb(64, 111, 118) 40px,
		rgb(18, 83, 93) 40px);
	-webkit-text-fill-color: transparent;
	-webkit-background-clip: text;
}

#title:after {
	content: ' ';
	display: block;
	width: 100%;
	height: 2px;
	margin-top: 10px;
	background: -moz-linear-gradient(left, rgba(147, 184, 189, 0) 0%,
		rgba(147, 184, 189, 0.8) 20%, rgba(147, 184, 189, 1) 53%,
		rgba(147, 184, 189, 0.8) 79%, rgba(147, 184, 189, 0) 100%);
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, rgba(147,
		184, 189, 0)), color-stop(20%, rgba(147, 184, 189, 0.8)),
		color-stop(53%, rgba(147, 184, 189, 1)),
		color-stop(79%, rgba(147, 184, 189, 0.8)),
		color-stop(100%, rgba(147, 184, 189, 0)));
	background: -webkit-linear-gradient(left, rgba(147, 184, 189, 0) 0%,
		rgba(147, 184, 189, 0.8) 20%, rgba(147, 184, 189, 1) 53%,
		rgba(147, 184, 189, 0.8) 79%, rgba(147, 184, 189, 0) 100%);
	background: -o-linear-gradient(left, rgba(147, 184, 189, 0) 0%,
		rgba(147, 184, 189, 0.8) 20%, rgba(147, 184, 189, 1) 53%,
		rgba(147, 184, 189, 0.8) 79%, rgba(147, 184, 189, 0) 100%);
	background: -ms-linear-gradient(left, rgba(147, 184, 189, 0) 0%,
		rgba(147, 184, 189, 0.8) 20%, rgba(147, 184, 189, 1) 53%,
		rgba(147, 184, 189, 0.8) 79%, rgba(147, 184, 189, 0) 100%);
	background: linear-gradient(left, rgba(147, 184, 189, 0) 0%,
		rgba(147, 184, 189, 0.8) 20%, rgba(147, 184, 189, 1) 53%,
		rgba(147, 184, 189, 0.8) 79%, rgba(147, 184, 189, 0) 100%);
}
</style>
</head>
<body>
	<ul class="topul">

		<li><a href="ServletHomePage"><img id="titleimg"
				src="images/UCSClogo.png" /></li>
		<li class="dropdown"><a href="javascript:void(0)" class="dropbtn"
			onclick="myFunction1()"><img id="userimg"
				class="dropbtn userIcon" src="images/default-user.png" /></a>
			<div class="dropdown-content" id="myDropdown">
				<a href="#">Profile</a> <a href="ServletSignOut">Sign Out</a>
			</div></li>
	</ul>
	<!-- Including left div which contains the Side Menu -->
	<%@include file="SideMenu.jsp"%>
	<!-- end of include -->
	<div id="rightDiv">

		<br>
		<header>
		<h1 align="center">Application for Transcript</h1>
		</header>
		<form id="msform" method="post" action="ServletTranscript">
			<!-- progressbar -->
			<ul style="padding-left: 30%;" id="progressbar">
				<li class="active"></li>
				<li></li>


			</ul>
			<!-- fieldsets -->
			<fieldset>
				<h2 class="fs-title" align="center">Personal Details</h2>
				<br>
				<p>
					<label for="fname" class="fullname" data-icon="u"> 1. Full
						Name </label> <input id="fname" name="fullname" required="required"
						type="text" value="${fullName}" placeholder="Mr./Miss./Mrs./Rev. Enter your name" />
				</p>
				<p>
					<label for="address" class="address" data-icon="e"> 5.
						Permanent Address</label> <input id="adrs" name="address"
						required="required" value="${permenentAddress}" type="text" />
				</p>
				<p>
					<label for="telenumber" class="telenumber" data-icon="u">
						4. Telephone No</label> <input id="tno" name="telenumber"
						required="required" value="${permenentMobile}" type="text" placeholder="eg. 0710782858" />
				</p>
				<p>
					<label for="idno" class="idnumber" data-icon="u"> 2.
						National Identity Card Number </label> <input id="nic_no" name="nic_no"
						required="required" value="${nicNo}" type="text" placeholder="eg. 932283678V"
						maxlength="10" />
				</p>
				<p>
					<label class="degree" data-icon="p"> 6. Name of degree
						awarded and class obtained</label> <input id="division1" name="degree"
						required="required" value="${degreeProgramme}" type="text" />
				</p>

				<p>
					<label for="rno" class="regnumber" data-icon="u"> 3.
						Registration/ Student Number </label> <input id="rno" name="regnumber"
						required="required" type="text" placeholder="eg. 2014/CS/152" />
				</p>

				<p>
					<label class="indexnumber" data-icon="u"> 3. Index Number
					</label> <input id="indexno" name="indexnumber" required="required"
						type="text" placeholder="eg. 14001004" />
				</p>



				


				<input type="button" name="next" class="next action-button" value="Next" />

			</fieldset>
			<fieldset>
				<h2 class="fs-title" align="center">Undegraduate Course
					Subjects</h2>
				<br> <label id="1">1. First Year First Semester</label>

				<div>
					<table id="users" class='restable1' style="margin-bottom: -30px;width:auto;">
						
						<tbody>



						</tbody>
					</table>
				</div>
				<br>
				<br> <label id="2">2. First Year Second Semester</label>

				<div>
					<table id="users" class='restable2' style="margin-bottom: -30px;width:auto;">
						
						<tbody>


						</tbody>
					</table>
				</div>
				<br>
				<br> <label id="3">3. Second Year first Semester</label>

				<div>
					<table id="users" class='restable3' style="margin-bottom: -30px;width:auto;">
						
						<tbody>


						</tbody>
					</table>
				</div>
				<br>
				<br> <label id="4">4. Second Year second Semester</label>

				<div>
					<table id="users" class='restable4' style="margin-bottom: -30px;width:auto;">
						
						<tbody>


						</tbody>
					</table>
				</div>
				<br>
				<br> <label id="5">5. Third Year first Semester</label>

				<div>
					<table id="users" class='restable5' style="margin-bottom: -30px;width:auto;">
						
						<tbody>

						</tbody>
					</table>
				</div>
				<br>
				
				<br> <label id="6">6. Third Year second Semester</label>

				<div>
					<table id="users" class='restable6' style="margin-bottom: -30px;width:auto;">
						
						<tbody>

						</tbody>
					</table>
				</div>
				<br>
				
<br> <label id="7">7. Fourth Year First Semester</label>

				<div>
					<table id="users" class='restable7' style="margin-bottom: -30px;width:auto;">
						
						<tbody>

						</tbody>
					</table>
				</div>
				<br>
				
				<br> <label id="8">8. Fourth Year Second Semester</label>

				<div>
					<table id="users" class='restable8' style="margin-bottom: -30px;width:auto;">
						
						<tbody>

						</tbody>
					</table>
				</div>
				<br>
				<br> <input type="button" name="previous"
					class="previous action-button" value="Previous" /> <input
					type="submit" name="submit" class="action-button"
					value="Print To PDF" />
			</fieldset>

		</form>

		<!-- jQuery -->
		<script
			src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
		<script src="http://thecodeplayer.com/uploads/js/jquery-1.9.1.min.js"
			type="text/javascript"></script>
		<!-- jQuery easing plugin -->
		<script src="http://thecodeplayer.com/uploads/js/jquery.easing.min.js"
			type="text/javascript"></script>

		<script type="text/javascript">
			var current_fs, next_fs, previous_fs; //fieldsets
			var left, opacity, scale; //fieldset properties which we will animate
			var animating; //flag to prevent quick multi-click glitches

			$(".next")
					.click(
							function() {
								if (animating)
									return false;
								
								$(".restable1:first > tbody").html("");
								$(".restable2:first > tbody").html("");
								$(".restable3:first > tbody").html("");
								$(".restable4:first > tbody").html("");
								$(".restable5:first > tbody").html("");
								$(".restable6:first > tbody").html("");
								$(".restable7:first > tbody").html("");
								$(".restable8:first > tbody").html("");

								animating = true;

								current_fs = $(this).parent();
								next_fs = $(this).parent().next();

								//activate next step on progressbar using the index of next_fs
								$("#progressbar li").eq(
										$("fieldset").index(next_fs)).addClass(
										"active");

								//show the next fieldset
								next_fs.show();
								//hide the current fieldset with style
								current_fs.animate({
									opacity : 0
								}, {
									step : function(now, mx) {
										//as the opacity of current_fs reduces to 0 - stored in "now"
										//1. scale current_fs down to 80%
										scale = 1 - (1 - now) * 0.2;
										//2. bring next_fs from the right(50%)
										left = (now * 50) + "%";
										//3. increase opacity of next_fs to 1 as it moves in
										opacity = 1 - now;
										current_fs.css({
											'transform' : 'scale(' + scale
													+ ')'
										});
										next_fs.css({
											'left' : left,
											'opacity' : opacity
										});
									},
									duration : 800,
									complete : function() {
										current_fs.hide();
										animating = false;
									},
									//this comes from the custom easing plugin
									easing : 'easeInOutBack'
								});

								console.log("Test");
								$.get(
												"ServletTranscriptAjax",
												{
													option : '1'
												},
												function(responseText) { // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...

													//alert(responseText);
													var respJson = JSON.parse(responseText);
													console.log(respJson[0][0].code);
													var i = 0;
													 document.getElementById("1").style.display = "none";
													 document.getElementById("2").style.display = "none";
													 document.getElementById("3").style.display = "none";
													 document.getElementById("4").style.display = "none";
													 document.getElementById("5").style.display = "none";
													 document.getElementById("6").style.display = "none";
													 document.getElementById("7").style.display = "none";
													 document.getElementById("8").style.display = "none";
													//var numbers=['first','second'];
													for (k = 0; k < respJson.length; k++) {
														var li=['1','2','3','4','5','6'];
														if (respJson[k] != null) {
															console.log(li[k]);
															
															document.getElementById(li[k]).style.display = "inline";
															console.log(respJson[k]);
															var rows = "";
															rows+='<thead><tr><th style="display: none;">ID</th><th>Course Code</th><th>Course Name</th><th>Grade</th><th>Number of Credits</th></thead>';
															
															
															
															
													
															for (i = 0; i < respJson[k].length; i++) {
																var subject = respJson[k][i];
																rows += "<tr>";
																rows += "<td>"
																		+ subject.code
																		+ "</td>";
																rows += "<td>"
																		+ subject.name
																		+ "</td>";
																rows += "<td>"
																		+ subject.grade
																		+ "</td>";
																rows += "<td>"
																		+ subject.credits
																		+ "</td>";
																rows += "</tr>";
															}
															$(".restable"+ (k + 1)+ ":first > tbody:last-child").append(rows);
														}

													}

												});
							});

			$(".previous").click(
					function() {
						if (animating)
							return false;
						animating = true;

						current_fs = $(this).parent();
						previous_fs = $(this).parent().prev();

						//de-activate current step on progressbar
						$("#progressbar li")
								.eq($("fieldset").index(current_fs))
								.removeClass("active");

						//show the previous fieldset
						previous_fs.show();
						//hide the current fieldset with style
						current_fs.animate({
							opacity : 0
						}, {
							step : function(now, mx) {
								//as the opacity of current_fs reduces to 0 - stored in "now"
								//1. scale previous_fs from 80% to 100%
								scale = 0.8 + (1 - now) * 0.2;
								//2. take current_fs to the right(50%) - from 0%
								left = ((1 - now) * 50) + "%";
								//3. increase opacity of previous_fs to 1 as it moves in
								opacity = 1 - now;
								current_fs.css({
									'left' : left
								});
								previous_fs.css({
									'transform' : 'scale(' + scale + ')',
									'opacity' : opacity
								});
							},
							duration : 800,
							complete : function() {
								current_fs.hide();
								animating = false;
							},
							//this comes from the custom easing plugin
							easing : 'easeInOutBack'
						});
					});

			$(".submit").click(function() {
				return false;
			})
		</script>

	</div>


	<script src="js/accordion.js"></script>
</body>
</html>

