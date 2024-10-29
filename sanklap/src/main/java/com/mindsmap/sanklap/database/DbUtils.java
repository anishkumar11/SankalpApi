package com.mindsmap.sanklap.database;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class DbUtils {

	public static void closeQuery(ResultSet rs, 
			Statement statement, 
			Connection con) {
		
		closeResultSet(rs);
		closeStatement(statement);
		closeDatabaseConnection(con);
	}

	private static void closeDatabaseConnection(Connection con) {
		try {
			if (con != null && !con.isClosed()) {
				con.close();
			}
		} catch (Exception e) {
			System.out.print("DatabaseConfig::closeDatabaseConnection::Exception: " + e);
		}
	}

	private static void closeResultSet(ResultSet rs) {
		try {
			if (rs != null && !rs.isClosed()) {
				rs.close();
			}
		} catch (Exception e) {
			System.out.println("DatabaseConfig::closeResultSet::Exception: " + e);
		}

	}

	public static void closeStatement(Statement statement) {
		try {
			if (statement != null && !statement.isClosed()) {
				statement.close();
			}
		} catch (Exception e) {
			System.out.println("DatabaseConfig::closeResultSet::Exception: " + e);
		}

	}
}

