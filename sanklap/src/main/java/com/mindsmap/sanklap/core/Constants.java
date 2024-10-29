package com.mindsmap.sanklap.core;

import java.io.File;

public class Constants {

	public final static String //BASE_URL = "https://mindmapstechnologies.com:9090/sanklap/";
	BASE_URL = "https://cubspreschool.myprelaunch.in/";

	public static String log = "";
	
	public final static String ROOT = "inetpub\\vhosts\\myprelaunch.in\\cubspreschool.myprelaunch.in\\",
	appFolder = "CustomImages",
	galleryPath = appFolder+File.separator+"GallaryImages"+File.separator+"Sankalp"+File.separator,
	BRANCHES = "branch"+File.separator;
	
	public static void addLog(String str) {
		log = log+"\n"+str;		
		DebugLog.print(str, false);
	}
	
	public static void clearLog() {
		log = "";		
	}
}
