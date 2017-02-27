package com.sims.servlet;

import java.io.IOException;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.itextpdf.text.Anchor;
import com.itextpdf.text.BadElementException;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.sims.service.RequestDataBinder;


/**
 * Servlet implementation class ServletTranscript
 */
// @WebServlet("/ServletTranscript")
// This Controller is not finished
public class ServletTranscript extends HttpServlet {

	protected void doGet(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		String nicNo = (String) request.getSession(false).getAttribute("nic_no");
		System.out.println("Servlet Nic Num" + nicNo);
		//request.getRequestDispatcher("jsp/Transcript.jsp").forward(request,response);
		//nicNo=933283780V
		request = RequestDataBinder.bindTranscriptData(request,nicNo);
		request.getRequestDispatcher("jsp/Transcript.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String nicNo = (String) request.getSession(false).getAttribute("nic_no");
		System.out.println("Servlet Nic Num" + nicNo);
		request = RequestDataBinder.bindResults(request,"933283780V");
		String ouputJSON = "some text";
		 
			   String [] ar={"first_first","first_second","second_first","second_second","third_first","third_second","fourth_first","fourth_second"};
			   System.out.println("gggggggg");

			   List<String[][]> ss=new ArrayList<String[][]>();
			   List< List<List<String>>> obj=new ArrayList<>();
			  // JSONArray obj = new JSONArray();
			 
			  
				   for(int i=0;i<ar.length;i++){
					  String[][] tt = (String[][])request.getAttribute(ar[i]);
					  
					  if(tt!=null){
						  System.out.println(ar[i]);
						  List<List<String>> list=new ArrayList<>();
						 // JSONArray list = new JSONArray();
						  for(int j=0;j<tt.length;j++){
							  List<String> obj2=new ArrayList<>();
								//[SCS1101, Data Structures and Algorithms I, B+]
							  
							  	//JSONObject obj2 = new JSONObject();
							  if(!(tt[j][2].equals("N_A"))){
									  obj2.add(tt[j][0]);
							  	obj2.add(tt[j][1]);
							  	obj2.add(tt[j][2]);
								request = RequestDataBinder.getCourseCredits(request,tt[j][0]);
							  	obj2.add(request.getAttribute("credits").toString());
							  	list.add(obj2);
							  }
							  	
							  }
						  if(list.isEmpty()==false){
							  obj.add(list);
						  }
							  
					   }
				   }
					 //ouputJSON = obj.toJSONString();					 
					  
		   
		String name = request.getParameter("fullname");
		String address = request.getParameter("address");
		String telenumber = request.getParameter("telenumber");
		String nic_no = request.getParameter("nic_no");
		String degree = request.getParameter("degree");
		String regnumber = request.getParameter("regnumber");
		String indexnumber = request.getParameter("indexnumber");
		
		// get the output stream for writing binary data in the response.
		// ServletOutputStream os = response.getOutputStream();
		// set the response content type to PDF
		response.setContentType("application/pdf");
		Document document = new Document();
		try {
			PdfWriter.getInstance(document, response.getOutputStream());
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// create a new document

		Font fontUCSC = new Font(FontFamily.TIMES_ROMAN, 18, Font.BOLD,new BaseColor(0, 0, 0));
		Font bfBold12 = new Font(FontFamily.TIMES_ROMAN, 12, Font.NORMAL,new BaseColor(0, 0, 0));
		Font titleFont = new Font(FontFamily.TIMES_ROMAN, 10, Font.BOLD,new BaseColor(0, 0, 0));
		Font fontText = new Font(Font.FontFamily.TIMES_ROMAN, 11f, Font.NORMAL);
		Font bf12 = new Font(FontFamily.TIMES_ROMAN, 12);
		document.addAuthor("SIMS @ UCSC");
		document.addTitle("Transcript");
		document.addCreationDate();

		document.setPageSize(PageSize.A4);
		document.open();
		document.newPage();
		
		
		// Creating the UCSC logo
		
		Paragraph imgPara = new Paragraph();
		try {
			Image img =Image.getInstance("H:\\UCSC\\Group Project\\Dev\\SIMS_Group7\\WebContent\\images\\ucscLogoPdf.png");
			img.setAlignment(Element.ALIGN_CENTER);
			imgPara.add(img);
			Paragraph ucscName = new Paragraph("UNIVERSITY OF COLOMBO SCHOOL OF COMPUTING");
			ucscName.setFont(fontUCSC);
			
			ucscName.setAlignment(Element.ALIGN_CENTER);
			document.add(imgPara);
			document.add(ucscName);
			Paragraph titleName = new Paragraph("Transcript Form");
			titleName.setFont(fontUCSC);
			titleName.setSpacingAfter(30);
			titleName.setAlignment(Element.ALIGN_CENTER);
			document.add(titleName);
			Paragraph seperator = new Paragraph("");
			
			
			PdfPTable table = new PdfPTable(2);
			float[] columnWidths = new float[] {30f, 60f};
            table.setWidths(columnWidths);
            
			PdfPCell namecell = new PdfPCell();
			Paragraph namePara = new Paragraph("1.Full Name");
			namePara.setFont(bfBold12);
			namecell.setBorder(Rectangle.NO_BORDER);
			namecell.addElement(namePara);
			PdfPCell cell2 = new PdfPCell();
			Chunk nameChunk = new Chunk(":"+" "+name);
			nameChunk.setFont(bfBold12);
			cell2.addElement(nameChunk);
			cell2.setBorder(Rectangle.NO_BORDER);
			table.addCell(namecell);
			table.addCell(cell2);
			
			PdfPCell addresscell = new PdfPCell();
			Paragraph addressPara = new Paragraph("2.Address");
			addressPara.setFont(bfBold12);
			addresscell.setBorder(Rectangle.NO_BORDER);
			addresscell.addElement(addressPara);
			PdfPCell cell4 = new PdfPCell();
			Chunk addressChunk = new Chunk(": 		"+address);
			addressChunk.setFont(bfBold12);
			cell4.addElement(addressChunk);
			cell4.setBorder(Rectangle.NO_BORDER);
			table.addCell(addresscell);
			table.addCell(cell4);
			
			
			PdfPCell contactcell = new PdfPCell();
			Paragraph contactPara = new Paragraph("3.Contact");
			contactPara.setFont(bfBold12);
			contactcell.setBorder(Rectangle.NO_BORDER);
			contactcell.addElement(contactPara);
			PdfPCell cell6 = new PdfPCell();
			Chunk contactChunk = new Chunk(": 		"+telenumber);
			contactChunk.setFont(bfBold12);
			cell6.addElement(contactChunk);
			cell6.setBorder(Rectangle.NO_BORDER);
			table.addCell(contactcell);
			table.addCell(cell6);
			
			PdfPCell niccell = new PdfPCell();
			Paragraph nicPara = new Paragraph("4.Contact");
			nicPara.setFont(bfBold12);
			niccell.setBorder(Rectangle.NO_BORDER);
			niccell.addElement(nicPara);
			PdfPCell cell8 = new PdfPCell();
			Chunk nicChunk = new Chunk(": 		"+nic_no);
			nicChunk.setFont(bfBold12);
			cell8.addElement(nicChunk);
			cell8.setBorder(Rectangle.NO_BORDER);
			table.addCell(niccell);
			table.addCell(cell8);
			
			PdfPCell degreecell = new PdfPCell();
			Paragraph degreePara = new Paragraph("5.Degree Course");
			degreePara.setFont(bfBold12);
			degreecell.setBorder(Rectangle.NO_BORDER);
			degreecell.addElement(degreePara);
			PdfPCell cell10 = new PdfPCell();
			Chunk degreeChunk = new Chunk(": 		"+degree);
			degreeChunk.setFont(bfBold12);
			cell10.addElement(degreeChunk);
			cell10.setBorder(Rectangle.NO_BORDER);
			table.addCell(degreecell);
			table.addCell(cell10);
			
			PdfPCell regcell = new PdfPCell();
			Paragraph regPara = new Paragraph("6.Registration Number");
			regPara.setFont(bfBold12);
			regcell.setBorder(Rectangle.NO_BORDER);
			regcell.addElement(regPara);
			PdfPCell cell12 = new PdfPCell();
			Chunk regChunk = new Chunk(": 		"+regnumber);
			regChunk.setFont(bfBold12);
			cell12.addElement(regChunk);
			cell12.setBorder(Rectangle.NO_BORDER);
			table.addCell(regcell);
			table.addCell(cell12);
			
			PdfPCell indexcell = new PdfPCell();
			Paragraph indexPara = new Paragraph("7.Index Number");
			indexPara.setFont(bfBold12);
			indexcell.setBorder(Rectangle.NO_BORDER);
			indexcell.addElement(indexPara);
			PdfPCell cell14 = new PdfPCell();
			Chunk indexChunk = new Chunk(": 		"+indexnumber);
			indexChunk.setFont(bfBold12);
			cell14.addElement(indexChunk);
			cell14.setBorder(Rectangle.NO_BORDER);
			table.addCell(indexcell);
			table.addCell(cell14);
			
			
			
			
			document.add(table);
			
		} catch (BadElementException e) {
			e.printStackTrace();
		} catch (DocumentException e) {
			e.printStackTrace();
		}
		
		//p -> first-first,first=second
		try {
			document.add( new Paragraph("") );
		} catch (DocumentException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		String[] semList={"First Year First Semeter","First Year Second Semester","Second Year First Semester","Second Year Second Semester","Third Year First Semester","Third Year Second Semester","Fourth Year First Semester","Fourth Year Second Semester"};
		
		   for(int p=0;p<obj.size();p++){
			   try {
				document.add( new Paragraph("") );
				Paragraph p1=new Paragraph(semList[p]);
				p1.setAlignment(1);
				p1.setSpacingAfter(10);	
				p1.setSpacingBefore(25);		
				document.add(p1);
			} catch (DocumentException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			   //obj(p)-> list of lists -> first first
			   float[] columnWidths = {2f, 4f, 1.5f, 1.5f};
			   PdfPTable table = new PdfPTable(columnWidths);
			   // set table width a percentage of the page width
			   table.setWidthPercentage(90f);
			   //insert column headings
			   PdfPCell codeCell=new PdfPCell();
			   Paragraph codePara=new Paragraph("Course Code");
			   codePara.setFont(titleFont);
			   codeCell.addElement(codePara);
			   table.addCell(codeCell);
			   
			   
			   PdfPCell nameCell=new PdfPCell();
			   Paragraph namePara=new Paragraph("Course Name");
			   namePara.setFont(titleFont);
			   nameCell.addElement(namePara);
			   table.addCell(nameCell);
			   
			   PdfPCell gradeCell=new PdfPCell();
			   Paragraph gradePara=new Paragraph("Grade");
			   gradePara.setFont(titleFont);
			   gradeCell.addElement(gradePara);
			   table.addCell(gradeCell);
			   
			   PdfPCell creditCell=new PdfPCell();
			   Paragraph creditPara=new Paragraph("Number of Credits");
			   creditPara.setFont(titleFont);
			   creditCell.addElement(creditPara);
			   table.addCell(creditCell);
			   table.setHeaderRows(1);
			   // one first-first
			   //code grade subject
			   //code grade subject
			   for(int h=0;h<obj.get(p).size();h++){
					   table.addCell(obj.get(p).get(h).get(0));
					   table.addCell(obj.get(p).get(h).get(1));
					   table.addCell(obj.get(p).get(h).get(2));
					   table.addCell(obj.get(p).get(h).get(3));
					   
				   
			   }
			 try {
				document.add(table);
			} catch (DocumentException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		   }
		
		// pdf header
		
		//ucscName.setAlignment(Element.ALIGN_CENTER);
		
		document.close();
	}

}
