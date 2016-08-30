<%@include file="jspMainComponents/Header.jsp" %>
<%@include file="jspMainComponents/SideMenu.jsp" %>
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
                 		<th>ID</th>
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
										+"<td>"
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
             		<text>ID</text>
	                 <input style="margin-left:63px;" name="course_id" id="course_id"></input>
	                 <text>Course Code</text>
	                 <input style="margin-left:63px" name="course_name_code" id="course_code"></input>
	                 <text style="margin-left:20px" >Course Name</text>
	                 <input style="margin-left:75px" name="course_name" id="course_name" ></input>
	                 <br></br>
	                 <text>Academic Year</text>
	                 <input style="margin-left:50px" name="academic_year" id="academic_year"></input>
	                 
	                 <text style="margin-left:10px">Academic Semester</text>
	                 <input style="margin-left:45px" name="academic_semester" id="academic_semester"></input><br><br>
	                 
	                 <text style="margin-left:3px">Lecturer In Charge</text>
	                 <input style="margin-left:20px" name="lec_in_charge" id="lec_in_charge"></input>
	                        
					<text style="margin-left:3px">Number of Credits</text>
	                 <input style="margin-left:20px" name="num_credits" id="num_credits"></input>
	                 
	                 <input style="margin-left:180px" type="radio" name="active" id="active" value="Active"> Active </input>
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
<%@include file="jspMainComponents/Footer.jsp" %>