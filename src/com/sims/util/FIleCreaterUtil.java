/*
*Author 	: Nandika Herath
*Project 	: Student Information Management System(SIMS)
*Package	: com.sims.util
*Name		: FIleCreaterUtil.java
*/

package com.sims.util;

import java.io.File;

public class FIleCreaterUtil {
	
	
	public static int createUserFolder(String fileName){
		System.err.println("In folder Creater " + fileName);
		String filePath = "H:\\UCSC\\Group Project\\Dev\\SIMS_Group7\\SIMSFiles\\UserFiles\\";
		boolean result = false;
		filePath = filePath.concat(fileName);
		System.err.println("Trying to create file" + filePath);
		File file = new File(filePath);
		result = file.mkdir();
		if(result == true) return 1;
		else return 0;
	}
}
