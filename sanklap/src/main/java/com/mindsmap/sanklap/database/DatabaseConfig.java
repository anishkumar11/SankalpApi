package com.mindsmap.sanklap.database;

import java.sql.Connection;
import java.sql.DriverManager;

import com.mindsmap.sanklap.core.DebugLog;

public class DatabaseConfig {
	
	private static String DATABASE_NAME = "sankalpschool",
			DATABASE_PASSWORD = "",
			/*MYSQL_USER_NAME = "root",
			MYSQL_PASSWORD = "",*/
			MYSQL_USER_NAME = "sankalpschool",
			MYSQL_PASSWORD = "pWcm62!8pWcm62!8",
			MYSQL_PORT_NUMBER = "3306",
			JDBC_URL = "jdbc:mysql://localhost:"+MYSQL_PORT_NUMBER;
			//JDBC_URL = "jdbc:mysql://173.212.226.93:"+MYSQL_PORT_NUMBER;
	
	private static String getDatabaseURL() {
		return JDBC_URL+"/"+DATABASE_NAME;//+"?useSSL=false&allowPublicKeyRetrieval=true";
		
		//String connectionString = "jdbc:mysql://173.212.226.93:3306/write_up?user=root&password=Admin@123&useUnicode=true&characterEncoding=UTF-8";
		//return connectionString;
	}
	
	private static String getMysqlUserName() {
		return MYSQL_USER_NAME;
	}
	
	private static String getMysqlPassword() {
		return MYSQL_PASSWORD;
	}

	public static Connection initializeConnection() {
		try {
			// For loading driver for mysql jdbc
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(DatabaseConfig.getDatabaseURL(), DatabaseConfig.getMysqlUserName(),
					DatabaseConfig.getMysqlPassword());
			
			
			//return DriverManager.getConnection(DatabaseConfig.getDatabaseURL());
			
		} catch (Exception e) {
			DebugLog.print("DatabaseConfig::initializeConnection::Exception: " + e, true);
		}
		return null;
	}
	

	
}
