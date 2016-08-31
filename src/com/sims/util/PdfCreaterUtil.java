/*
*Author 	: Nandika Herath
*Project 	: Student Information Management System(SIMS)
*Package	: com.sims.util
*Name		: PdfCreaterUtil.java
*/

package com.sims.util;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

public class PdfCreaterUtil {
	public static int createPDFStuRegiApplication(String Course,String fullName,String initialsName,
			String peraddress,String fixedtel,String mobiletel,String email,
			String tempaddress,String tempfiexnum,String tempmobile,String dob,
			String nic, String alnum,String zscore,String race,String religion,String civil,
			String fathername,String fatheroccupation,String fatherworkadd,String emergancyname,
			String emergancyadd,String emergancytel,String date) {
		int result = 0;
		Document document = new Document(PageSize.A4);
		document.addAuthor("SIMS @ UCSC");
		document.addTitle("Sample PDF");
		System.out.println("document created..");
		try{
			String filePath = "H:\\UCSC\\Group Project\\Dev\\SIMS_Group7\\SIMSFiles\\UserFiles\\";
			filePath = filePath.concat(nic);
			filePath = filePath.concat("\\");
			filePath = filePath.concat("Registration_Form.pdf");
			PdfWriter.getInstance(document, new FileOutputStream(filePath));
			System.out.println("Creating File-> " + filePath);
			// Creating font for UCSC Name
			Font fontUCSC = new Font(Font.FontFamily.TIMES_ROMAN, 18, Font.BOLD);
			// Creating font for document Heading
			Font fontHeading = new Font(Font.FontFamily.TIMES_ROMAN, 16, Font.BOLDITALIC);
			// Creating font for document content
			Font fontText = new Font(Font.FontFamily.TIMES_ROMAN, 11f, Font.NORMAL);
			// Creating font for document content
			Font fontSub = new Font(Font.FontFamily.TIMES_ROMAN, 10f, Font.NORMAL);
			//Creating font for System Signature
			Font fontSign = new Font(Font.FontFamily.COURIER, 8f, Font.BOLDITALIC);
			
			System.out.println("Writer Instance created..");
			document.open();
			document.newPage();
			Paragraph separator = new Paragraph(" ");
			// Creating the UCSC logo
			
			Image img = Image.getInstance("H:\\UCSC\\Group Project\\Dev\\SIMS_Group7\\WebContent\\webComponents\\images\\ucscLogoPdf.png");
			
			/*
			 * Rest of the document
			 */
			//Document Header
			Paragraph ucscName = new Paragraph("UNIVERSITY OF COLOMBO SCHOOL OF COMPUTING");
			ucscName.setFont(fontUCSC);
			ucscName.setAlignment(Element.ALIGN_CENTER);
			
			// Document Topic
			Paragraph docTopic = new Paragraph("Student Identity Card Application");
			docTopic.setFont(fontHeading);
			docTopic.setAlignment(Element.ALIGN_CENTER);
			
			/*
			 * Document body
			 */
			// Selected Course Doc
			Paragraph docCourse = new Paragraph("1.Selected Course: ");
			docCourse.setFont(fontText);
			
			//Selected Course
			Chunk course = new Chunk(Course);
			course.setFont(fontText);
			
			//Applicant full Name Doc
			Paragraph docFullName = new Paragraph("2.Applicants Full Name: ");
			docFullName.setFont(fontText);
			
			//Applicant full Name
			Chunk fullname = new Chunk(fullName);
			fullname.setFont(fontText);
			
			//Name With Initials doc
			Paragraph docInitials = new Paragraph("3.Name With Initials: ");
			docInitials.setFont(fontText);
			
			//Name with Initials
			Chunk initials = new Chunk(initialsName);
			initials.setFont(fontText);
			
			//Permanent Address doc
			Paragraph docPerAddress = new Paragraph("4.Permenent Address: ");
			docPerAddress.setFont(fontText);
			
			//Permanent Address
			Chunk perAddress = new Chunk(peraddress);
			perAddress.setFont(fontText);
			
			//Telephone Numbers doc
			Paragraph docTelNumbers = new Paragraph("4.a Telephone Numbers: ");
			docTelNumbers.setFont(fontText);
			
			//Fixed Line Doc
			Paragraph docFixedLine = new Paragraph("Fixed Telephone Number: ");
			docFixedLine.setFont(fontSub);
			
			//Fixed Line 
			Chunk fixedLine = new Chunk(fixedtel);
			fixedLine.setFont(fontSub);
			
			//Mobile Line Doc
			Paragraph docMobileLine = new Paragraph("Mobile Telephone Number: ");
			docMobileLine.setFont(fontSub);
			
			//Mobile Line 
			Chunk mobileLine = new Chunk(mobiletel);
			mobileLine.setFont(fontSub);
			
			//Email Address Doc
			Paragraph docEmail = new Paragraph("5.Email Address: ");
			docEmail.setFont(fontText);
			
			//Email Address
			Chunk EMail = new Chunk(email);
			EMail.setFont(fontText);
			
			//Temporary Address Doc
			Paragraph docTempAddress = new Paragraph("6.Temporary Address: ");
			docTempAddress.setFont(fontText);
			
			//Temporary Address
			Chunk tempAddress = new Chunk(tempaddress);
			tempAddress.setFont(fontText);
			
			//Temporary Telephone Number doc
			Paragraph docTempTel = new Paragraph("6.a Telephone Numbers: ");
			docTempTel.setFont(fontText);
			
			//TEmporary Fixed Tel doc
			Paragraph docTempFixedTel = new Paragraph("Telephone Number: ");
			docTempFixedTel.setFont(fontSub);
			
			//Temporary Fixed Tel
			Chunk tempFixedTel = new Chunk(tempfiexnum);
			tempFixedTel.setFont(fontSub);
			
			//Temporary Mobile Number doc
			Paragraph docTempMobileNum = new Paragraph("Mobile Number: ");
			docTempMobileNum.setFont(fontSub);
			
			//Temporary Mobile Number
			Chunk tempMobileNum = new Chunk(tempmobile);
			tempMobileNum.setFont(fontSub);
			
			//Date Of Birth Doc
			Paragraph docDOB = new Paragraph("7.Date of Birth: ");
			docDOB.setFont(fontText);
			
			//Date of birth 
			Chunk DOB = new Chunk(dob);
			DOB.setFont(fontText);
			
			//NIC No Doc
			Paragraph docNIC = new Paragraph("8.N.I.C. No: ");
			docNIC.setFont(fontText);
			
			//NIC No
			Chunk Nic = new Chunk(nic);
			Nic.setFont(fontText);
			
			//G.C.E A/L Index Number doc
			Paragraph docALNum = new Paragraph("9.a G.C.E A/L Index Number: ");
			docALNum.setFont(fontText);
			
			//G.C.E A/L Index Number
			Chunk alNum = new Chunk(alnum);
			alNum.setFont(fontSub);
			
			//Z-Score Doc
			Paragraph docZScore = new Paragraph("9.b Z-Score: ");
			docZScore.setFont(fontText);
			
			//Z-Score
			Chunk zScore = new Chunk(zscore);
			zScore.setFont(fontSub);
			
			//Race doc
			Paragraph docRace = new Paragraph("10.a Race: ");
			docRace.setFont(fontText);
			
			//Race
			Chunk Race = new Chunk(race);
			Race.setFont(fontSub);
			
			//Religion Doc
			Paragraph docReligion = new Paragraph("10.b Religion: ");
			docReligion.setFont(fontText);
			
			//Religion 
			Chunk Religion = new Chunk(religion);
			Religion.setFont(fontSub);
			
			//Civil Statues doc
			Paragraph docCivilStat = new Paragraph("10.c Civil Statues: ");
			docCivilStat.setFont(fontText);
			
			//Civil Statues
			Chunk civilStat = new Chunk(civil);
			civilStat.setFont(fontSub);
			
			//Father/Guardian Doc
			Paragraph docFatherDetails = new Paragraph("11.Father\'s / Gaurdian\'s Details");
			docFatherDetails.setFont(fontText);
			
			//Father Name doc
			Paragraph docFatherName = new Paragraph("11.a Name: ");
			docFatherName.setFont(fontSub);
			
			//Father Name
			Chunk fatherName = new Chunk(fathername);
			fatherName.setFont(fontSub);
			
			//Father Occupation doc
			Paragraph docFatherOccupation = new Paragraph("11.b Occupation");
			docFatherOccupation.setFont(fontSub);
			
			//Father Occupation
			Chunk fatherOccupation = new Chunk(fatheroccupation);
			fatherOccupation.setFont(fontSub);
			
			//Father Work Place doc
			Paragraph docFatherWorkAdd = new Paragraph("11.c Address of the Place of Work: ");
			docFatherWorkAdd.setFont(fontSub);
			
			//Father Work Place 
			Chunk fatherWorkadd = new Chunk(fatherworkadd);
			fatherWorkadd.setFont(fontSub);
			
			//Emaegency doc
			Paragraph docEmergancy = new Paragraph("12.In Case of Emergancy Pleace Inform: ");
			docEmergancy.setFont(fontText);
			
			//Emergancy Name Doc
			Paragraph docEmergancyName = new Paragraph("12.a Name: ");
			docEmergancyName.setFont(fontSub);
			
			//Emergancy Name
			Chunk emargancyName = new Chunk(emergancyname);
			emargancyName.setFont(fontSub);
			
			//Emergency Address Doc
			Paragraph docEmergancyAdd = new Paragraph("12.b Address: ");
			docEmergancyAdd.setFont(fontSub);
			
			//Emergancy Address
			Chunk emergancyAdd = new Chunk(emergancyadd);
			emergancyAdd.setFont(fontSub);
			
			//Emergancy Tel Doc
			Paragraph docEmergancyTel = new Paragraph("12.c Telephone Number");
			docEmergancyTel.setFont(fontSub);
			
			//Emargancy Tel
			Chunk emergancyTel = new Chunk(emergancytel);
			emergancyTel.setFont(fontSub);
			
			//Date Doc
			Paragraph docDate = new Paragraph("Date: ");
			docDate.setFont(fontText);
			
			//Date
			Chunk Date = new Chunk(date);
			Date.setFont(fontText);
			
			//System Signature
			Paragraph systemSign = new Paragraph("A Document Genarated By SIMS.");
			systemSign.setFont(fontSign);
			
			document.add(ucscName);
			document.add(img);
			document.add(docTopic);
			document.add(docCourse);
			document.add(course);
			
			document.add(separator);
			
			document.add(docFullName);
			document.add(fullname);
			
			document.add(separator);
			
			document.add(docInitials);
			document.add(initials);
			
			document.add(separator);
			
			document.add(docPerAddress);
			document.add(perAddress);
			
			document.add(separator);
			
			document.add(docTelNumbers);
			
			document.add(separator);
			
			document.add(docFixedLine);
			document.add(fixedLine);
			
			document.add(separator);
			
			document.add(docMobileLine);
			document.add(mobileLine);
			
			document.add(separator);
			
			document.add(docEmail);
			document.add(EMail);
			
			document.add(separator);
			
			document.add(docTempAddress);
			document.add(tempAddress);
			
			document.add(separator);
			
			document.add(docTempTel);
			
			document.add(docTempFixedTel);
			document.add(tempFixedTel);
			
			document.add(separator);
			
			document.add(docTempMobileNum);
			document.add(tempMobileNum);
			
			document.add(separator);
			
			document.add(docDOB);
			document.add(DOB);
			
			document.add(separator);
			
			document.add(docNIC);
			document.add(Nic);
			
			document.add(separator);
			
			document.add(docALNum);
			document.add(alNum);
			
			document.add(separator);
			
			document.add(docZScore);
			document.add(zScore);
			
			document.add(separator);
			
			document.add(docRace);
			document.add(Race);
			
			document.add(separator);
			
			document.add(docReligion);
			document.add(Religion);
			
			document.add(separator);
			
			document.add(docCivilStat);
			document.add(civilStat);
			
			document.add(separator);
			
			document.add(docFatherDetails);
			
			document.add(separator);
			
			document.add(docFatherName);
			document.add(fatherName);
			
			document.add(separator);
			
			document.add(docFatherOccupation);
			document.add(fatherOccupation);
			
			document.add(separator);
			
			document.add(docFatherWorkAdd);
			document.add(fatherWorkadd);
			
			document.add(separator);
			
			document.add(docEmergancy);
			
			document.add(separator);
			
			document.add(docEmergancyName);
			document.add(emargancyName);
			
			document.add(separator);
			
			document.add(docEmergancyAdd);
			document.add(emergancyAdd);
			
			document.add(separator);
			
			document.add(docEmergancyTel);
			document.add(emergancyTel);
			
			document.add(separator);
			
			document.add(docDate);
			document.add(Date);
			
			document.add(separator);
			
			document.add(systemSign);
			
			System.out.println("Para added..");
			result = 1;
			return result;
		}
		catch(Exception e){
			System.out.println(e);
		}
		finally{
			document.close();
			System.out.println("document closed..");
		}
		return result;
	}
}
