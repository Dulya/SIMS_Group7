<%@include file="jspMainComponents/Header.jsp" %>
<%@include file="jspMainComponents/SideMenu.jsp" %>
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
<%@include file="jspMainComponents/Footer.jsp" %>