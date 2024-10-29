package com.mindsmap.sanklap.core;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Random;

import org.json.JSONObject;

import java.io.File;
import java.lang.reflect.Field;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedHashMap;

public class Utils {
	
	public static boolean isEmpty(String text) {
		if(text == null || text.trim().isEmpty()) {
			return true;
		}
		return false;
	}
	
	public static int genrateOTP() {
		try {
			
			//This gives you a random number in between 1000 (inclusive) and 10000 (exclusive)
			
			Random r = new Random();
			int low = 100000;
			int high = 1000000;
			int result = r.nextInt(high-low) + low;
			return result; 
		}catch(Exception e) {
			
		}		
		
		return 0;
	}
	
	
	public static String getTodayDate() {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");  
		LocalDateTime now = LocalDateTime.now();
		return dtf.format(now);
	}
	
	public static String getUpdatedAtStamp() {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");  
		LocalDateTime now = LocalDateTime.now();
		return dtf.format(now);
	}
	
	
	
	public static String getExpireOnTimestamp(int numberOfDays) {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Calendar c = Calendar.getInstance();
		c.setTime(new Date()); // Using today's date
		c.add(Calendar.DATE, numberOfDays); // plan's number of days
		return sdf.format(c.getTime());
		
	}
	
	public static boolean isExpired(String expiredDate) {
		
		return getDateTimeStamp(expiredDate) < getDateTimeStamp(null);  
		
	}
	
	private static long getDateTimeStamp(String dateStr) {
		if(isEmpty(dateStr)) {
			Calendar c = Calendar.getInstance();
			c.setTime(new Date()); // Using today's date
			return c.getTimeInMillis(); 	
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Calendar c = Calendar.getInstance();
		try {
			c.setTime(sdf.parse(dateStr));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // Using today's date
		
		return c.getTimeInMillis(); 
			
	}
	
	public static String getDOB(String dateStr) {
		
		if(!Utils.isEmpty(dateStr)) {
			if(dateStr.indexOf("/") >= 0) {
				dateStr = dateStr.replaceAll("/", "-");
				String[] array = dateStr.split("-");
				if(array[2].length() == 2) {
					array[2] = "20"+array[2];
				}
				dateStr = array[0]+"-"+array[1]+"-"+array[2]; 
				SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
				try {
					SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
					return sdf1.format(sdf.parse(dateStr));
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} // Using today's date	
			}else if(dateStr.indexOf("-") >= 0) {
				
				String[] array = dateStr.split("-");
				if(array[2].length() == 2) {
					array[2] = "20"+array[2];
				}
				dateStr = array[0]+"-"+array[1]+"-"+array[2];
				
				SimpleDateFormat sdf = new SimpleDateFormat("dd-MMM-yyyy");
				try {
					SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
					return sdf1.format(sdf.parse(dateStr));
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} // Using today's date	
			}
				
		}
		
		return "0000-00-00 00:00:00"; 
			
	}
	
	
	public static JSONObject getError(String key, String value) {
		JSONObject obj = initializeJsonObject();
		obj.put("statusCode", 400);
		obj.put(key, value);
		
		return obj;
	}
	
	public static JSONObject getSuccessResponse(String key, String value) {
		JSONObject obj = initializeJsonObject();
		
		obj.put("statusCode", 200);
		obj.put(key, value);
		return obj;
	}
	
	private static JSONObject initializeJsonObject() {
		JSONObject obj = new JSONObject();
		try {
		      Field changeMap = obj.getClass().getDeclaredField("map");
		      changeMap.setAccessible(true);
		      changeMap.set(obj, new LinkedHashMap<>());
		      changeMap.setAccessible(false);
		    } catch (IllegalAccessException | NoSuchFieldException e) {
		     
		    }
		return obj;
	}

	
	/*public static void sendPushNoticaton(JSONObject pushNoticationcontents, String userId) {
		FcmHelper helper = new FcmHelper();
		ArrayList<FcmToken> list = helper.getTokenList(userId);
		String notifiyTitle = "Flashfood";
		for(FcmToken pi : list) {
			PushNotificationUtils.sendPushNotification(notifiyTitle,"", pushNoticationcontents, pi.getToken());
		}
	}*/

	public static String imagePathFormation(String path) {
		if(path.toLowerCase().startsWith("http")) {
			return path;
		}
		return Constants.BASE_URL+path;
		
	}
	
	public static String getRootFolder() {
		File[] files = File.listRoots();
		String ROOT_FOLDDER = "";
		if(files != null) {
			ROOT_FOLDDER = files[0].getAbsolutePath()+Constants.ROOT;
		}
		return ROOT_FOLDDER; 
	}
}
