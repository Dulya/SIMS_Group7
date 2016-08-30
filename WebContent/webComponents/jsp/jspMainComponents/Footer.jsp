<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
	<script src="../js/Registration.js"></script>
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
	
	 <!-- jQuery -->
       
        <script src="http://thecodeplayer.com/uploads/js/jquery-1.9.1.min.js" type="text/javascript"></script>
        <!-- jQuery easing plugin -->
        <script src="http://thecodeplayer.com/uploads/js/jquery.easing.min.js" type="text/javascript"></script>
        <script src="../js/form.js" type="text/javascript"></script>
	<script src="../js/accordion.js"></script>
</html>