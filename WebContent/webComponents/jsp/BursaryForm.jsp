<%@include file="jspMainComponents/Header.jsp" %>
<%@include file="jspMainComponents/SideMenu.jsp" %>
<div id="rightDiv" >

<br>
		<header>
        <h1 align="center">Application for Student Bursary</h1>
		</header>
        <form id="msform">
            <!-- progressbar -->
            <ul id="progressbar">
                <li class="active"></li>
                <li></li>
                <li></li>
				<li></li>
				
            </ul>
            <!-- fieldsets -->
            <fieldset>
                <h2 class="fs-title" align="center">Personal Details</h2>
                <br>
                <p>
                    <label for="fname" class="fullname" data-icon="u" > 1. Full Name </label>
                    <input id="fname" name="fullname" required="required" type="text" placeholder="Mr./Miss./Mrs./Rev. Enter your name"/>
                </p>
                <p> 
                    <label for="idno" class="idnumber" data-icon="u" > 2. National Identity Card Number </label>
                    <input id="idno" name="idnumber" required="required" type="text" placeholder="eg. 932283678V" maxlength="10" /> 
                </p>
                <p> 
                    <label for="rno" class="regnumber" data-icon="u" > 3. Registration/ Student Number </label>
                    <input id="rno" name="regnumber" required="required" type="text" placeholder="eg. 2014/CS/152" /> 
                </p>
                <p> 
                    <label for="telenumber" class="telenumber" data-icon="u" > 4. Telephone No</label>
                    <input id="tno" name="telenumber" required="required" type="text" placeholder="eg. 0710782858" /> 
                </p>
                <p>
                    <label for="address" class="address" data-icon="e" > 5. Permanent Address</label>
                    <input id="adrs" name="address" required="required" type="text" /> 
                </p>
                <p>
                    <label for="division1" class="division1" data-icon="p" > 6. Division of the Gramaseva Niladhari</label>
                    <input id="division1" name="div1" required="required" type="text" /> 
                </p>
                <p>
                    <label for="division2" class="division2" data-icon="p" > 7. Division of the Divisional Secretary</label>
                    <input id="division2" name="div2" required="required" type="text" /> 
                </p>
                <p>
                    <label for="district" class="district" data-icon="p" > 8. District</label>
                    <input id="district" name="district" required="required" type="text" /> 
                </p>
                <p>
                    <label for="distance" class="distance" data-icon="p" > 9. Distance from your Residence to University of Colombo</label>
                    <input id="division1" name="div1" required="required" type="text" placeholder="to the closest kilometer(1 mile = 1.6 km)"/> 
                </p>

                <input type="button" name="next" class="next action-button" value="Next"/>

            </fieldset>
            <fieldset>
                <h2 class="fs-title" align="center">Details of Family</h2>
                <br>
                1. State details of brothers and sisters who are 19 years old or under 19 years old.You should be able to provide the birth certificates of them. <br>
                <div> 
                    <table id="table0" cellspacing='0'>
                        <thead>
                            <tr>
                                <th><input type="button" id="add" value="+" class="add-button" style="align:right;" onclick="Javascript:addRow(0)"></th>
                                <th>Name</th>
                                <th>Date of Birth</th>
                                <th>Age</th>
                                <th>Name of School/Institution where education is being received</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                            </tr>
                        </tbody>
                    </table>				
                </div>
                <br>

                2. If you have brothers or sisters who are following courses of studies at any University or Higher Educational Institute, fill in the details below.
                <div>
                    <table id="table1" cellspacing='0'>
                        <thead>
                            <tr>
                                <th><input type="button" id="add" value="+" class="add-button" style="align:right;" onclick="Javascript:addRow(1)"></th>
                                <th>Name</th>
                                <th>GCE(A/L) Index No.</th>
                                <th>Name of Institution of Higher Education</th>
                                <th>Course</th>
                                <th>Year of Study</th>
                                <th>Receiving Mahapola/Bursary?</th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="checkbox"></td>
                            </tr>
                        </tbody>
                    </table>	
                    <br/>
                </div>
                <br>

                3. If your mother/father/unmarried brother or sister is an income tax payer, supply the following details.
                <div>
                    <table id="table2" cellspacing='0'>
                        <thead>
                            <tr>
                                <th><input type="button" id="add" value="+" class="add-button" style="align:right;" onclick="Javascript:addRow(2)"></th>
                                <th>Name</th>
                                <th>Relationship</th>
                                <th>Income Tax File No.</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                            </tr>
                        </tbody>
                    </table>	
                </div>
                <br>

                4. If you have earlier followed a Course or obtained a certificate from a University or other Higher Educational Institution, supply following details.
                <div>
                    <table id="table3" cellspacing='0'>
                        <thead>
                            <tr>
                                <th><input type="button" id="add" value="+" class="add-button" style="align:right;" onclick="Javascript:addRow(3)"></th>
                                <th>Name of the Institution</th>
                                <th>Course</th>
                                <th>Period of Study</th>
                                <th>Details regarding student Loan/Scholarship/Bursary received</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                            </tr>
                        </tbody>
                    </table>	
                </div>

                5. If you are receiving any scholarship or any funds from government or local government authority or any other institution or association state the name of scholarship and amount received
                <div>
                    <table id="table4" cellspacing='0'>
                        <thead>
                            <tr>
                                <th><input type="button" id="add" value="+" class="add-button" style="align:right;" onclick="Javascript:addRow(4)"></th>
                                <th>Name of the scholarship</th>
                                <th>Name of institution/ association/ authority which awarded the scholarship</th>
                                <th>Amount received</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                            </tr>
                        </tbody>
                    </table>	
                </div><br>
					<input type="button" name="previous" class="previous action-button" value="Previous" />
					<input type="button" name="next" class="next action-button" value="Next" />
				</fieldset>
				<fieldset>
                6. Income derived from estates and cultivable land
                <div id="mydata6">
                    <table id="table5" cellspacing='0'>
                        <thead>
                            <tr>
                                <th><input type="button" id="add" value="+" class="add-button" style="align:right;" onclick="Javascript:addRow(5)"></th>
                                <th>Name of the owner</th>
                                <th>Relationship</th>
                                <th>Location</th>
                                <th>Nature of Cultivation</th>
                                <th>Extent of Land Description</th>
                                <th>Annual Income(Rs.)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                            </tr>
                        </tbody>
                    </table>	

                </div><br>
				7. Income derived from houses
                <div id="mydata7">
                    <table id="table6" cellspacing='0'>
                        <thead>
                            <tr>
                                <th><input type="button" id="add" value="+" class="add-button" style="align:right;" onclick="Javascript:addRow(6)"></th>
                                <th>Name of the owner</th>
                                <th>Relationship</th>
                                <th>Assessment No</th>
                                <th>Address</th>
                                <th>Annual Income</th>
                                <th>If rented/leases name & address</th>
								<th>Gramasewaka Niladhari's area</th>
								<th>Regional Secretary's division</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
								<td><input type="text"></td>
								<td><input type="text"></td>
                            </tr>
                        </tbody>
                    </table>	

                </div><br>
				
                
                8. Fill in this section only if you are employed<br><br>
                <p>
                    <label for="department" class="department" data-icon="u" > Name and address of Institution/Department </label>
                    <input id="dprt" name="dprt" required="required" type="text" placeholder="Name, Address" />
                </p>
                <p> 
                    <label for="kkkpost" class="kkkpost" data-icon="u" > Your Post </label>
                    <input id="post" name="post" required="required" type="text"/> 
                </p>
                <p> 
                    <label for="salaryscale" class="salaryscale" data-icon="u" > Salary Scale </label>
                    <input id="sscale" name="sscale" required="required" type="text" /> 
                </p>
                <p>
                    <label for="salary" class="salary" data-icon="u" > Salary </label>
                    <input id="salary" name="salary" required="required" type="text" placeholder="Rs." />
                </p>
                <p>
                    <label for="dateofappoint" class="dateofappoint" data-icon="u" > Date of appointment </label>
                    <input id="fname" name="dprt" required="required" type="text" placeholder="Date.Month.Year" />
                </p><br>


                9. Fill in this section only if you are married<br><br>
                <p>
                    <label for="dateofmarriage" class="dateofmarriage" data-icon="u" > Date of marriage </label>
                    <input id="datemrg" name="datemrg" required="required" type="text" placeholder="Date.Month.Year" />
                </p>
                <p>
                    <label for="nameofspouse" class="nameofmarriage" data-icon="u" > Name of Spouse </label>
                    <input id="spouse" name="spouse" required="required" type="text" placeholder="Mr./Mrs." />
                </p>
                <p>
                    <label for="employedplace" class="employedplace" data-icon="u" > If spouse is employed name of institution where she/he is employed </label>
                    <input id="empplace" name="empplace" required="required" type="text" />
                </p>
                <p>
                    <label for="postheld" class="postheld" data-icon="u" > Post held </label>
                    <input id="postspouse" name="postspouse" required="required" type="text" />
                </p>
                <p>
                    <label for="salaryspouse" class="salaryspouse" data-icon="u" > Present salary </label>
                    <input id="slryspouse" name="slryspouse" required="required" type="text" placeholder="Rs. monthly salary inclusive of all allowances" />
                </p><br>
					<input type="button" name="previous" class="previous action-button" value="Previous" />
					<input type="button" name="next" class="next action-button" value="Next" />
				</fieldset>
				<fieldset>
                10. Whether you are a Sri Lankan citizen or not<br><br>
                <p>
                    <label for="nationality" class="nationality" data-icon="u" > If you are a Sri Lankan citizen state YES otherwise No  </label>
                    <input id="nation" name="nation" required="required" type="text" placeholder="YES/NO" />
                </p><br>
				11.Fill the details of father,mother,guardians respectively
				<div id="mydata8">
                    <table id="table7" cellspacing='0'>
						<thead>
                            <tr>
                                <th><input type="button" id="add" value="+" class="add-button" style="align:right;" onclick="Javascript:addRow(7)"></th>
                                <th>Full Name</th>
                                <th>If living say YES otherwise No</th>
                                <th>Age</th>
                                <th>Employment</th>
                                <th>Address present/past employment</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                
                            </tr>
                        </tbody>
                    </table><br>
                </div>
				<div id="mydata9" >
                    <table id="table8" cellspacing='0'>
                        <thead>
                            <tr>
                                <th><input type="button" id="add" value="+" class="add-button" style="align:right;" onclick="Javascript:addRow(8)"></th>
                                <th>Income from employment/Pension</th>
								<th>Income from properties</th>
								<th>Income from all other sources</th>
								<th>Total annual income</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                <td><input type="text"></td>
                                
                            </tr>
                        </tbody>
                    </table>	

                </div><br>

                12. Father's and mother's total annual income.
                <p>
                    <input id="parentsincm" name="parentsincm" required="required" type="text" placeholder="Total annual income of father and mother in words" />
                </p><br>
                13. For senior students only
                <br>
                <p>
                    <label for="regno" class="regno" data-icon="u" > Student Registration No </label>
                    <input id="regnumber" name="regnumber" required="required" type="text"  />
                </p>
                <p>
                    <label for="yearofadmision" class="yearofadmission" data-icon="u" > Year of admission to the University </label>
                    <input id="yearadmsn" name="yearadmsn" required="required" type="text" placeholder="eg.2015" />
                </p>
                <p>
                    <label for="faculty" class="faculty" data-icon="u" > Faculty </label>
                    <input id="faculty" name="faculty" required="required" type="text" />
                </p>
                <p>
                    <label for="crsfollowed" class="crsfollowed" data-icon="u" > Course followed  </label>
                    <input id="crsfollow" name="crsfollow" required="required" type="text"  />
                </p>
                <input type="button" name="previous" class="previous action-button" value="Previous" />
                <input type="button" name="submit" class="action-button" value="Submit" />
            </fieldset>

        </form>


</div>
<%@include file="jspMainComponents/Footer.jsp" %>