/*
*Author 	: Nandika Herath
*Project 	: Student Information Management System(SIMS)
*Package	: com.sims.util
*Name		: EncryptUtil.java
*/

package com.sims.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class EncryptUtil {
	
	static String encryptInSHA1(String str){
		MessageDigest mDigest;
		String encrypted =null;
		try{
			mDigest = MessageDigest.getInstance("SHA1");
			byte[] result = mDigest.digest(str.getBytes());
	        StringBuffer sb = new StringBuffer();
	        
	        for (int i = 0; i < result.length; i++) {
	            sb.append(Integer.toString((result[i] & 0xff) + 0x100, 16).substring(1));
	        }
	        encrypted = sb.toString();
	        
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
        return encrypted;
	}
}
