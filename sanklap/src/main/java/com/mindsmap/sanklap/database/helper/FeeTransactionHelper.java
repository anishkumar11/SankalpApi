package com.mindsmap.sanklap.database.helper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.models.FeeTransactionModel;

public class FeeTransactionHelper {
	
	
	public FeeTransactionHelper() {
	}

	

	/*
	 * Get Total fee paid list
	 */
	
	public double getTotalFeePaid(int studentId, int batchId, JdbcTemplate jdbcTemplate) {
		
		
		double total = 0;
		
		String sql = "select SUM(amount) AS totalFeePaid"
				
				+" from " + DatabaseTables.TABLE_NAME_FEE_TRANSACTIONS;

		String whereClause = " where student_id= ?" + " && batchId = ?";
		String orderClause = "";
		
		sql = sql + whereClause+orderClause;
		
		try {
			
			RowMapper<String> rowMapper = new RowMapper<String>() {
				@Override
				public String mapRow(ResultSet rs, int rowNum) throws SQLException {
					return String.valueOf(rs.getInt(1));
				}
			};
			String mi = jdbcTemplate.queryForObject(sql, rowMapper, studentId, batchId);
			if(!Utils.isEmpty(mi)) {
				total = Integer.parseInt(mi);
			}
			
		} catch (Exception e) {
			DebugLog.print("FeeTransactionHelper::getTotalFeePaid::Exception: " + e, true);
		}
		return total;
	}
	
	
	/*
	 * Get Fee list
	 */
	
	public ArrayList<FeeTransactionModel> getTransactionList(int studentId, int batchId, int page, JdbcTemplate jdbcTemplate) {
		
		
		int maxRowCount = 20;
		int startOffset = (page-1)*maxRowCount;
		
		ArrayList<FeeTransactionModel> list = new ArrayList<FeeTransactionModel>();
		
		String sql = "select "+"id, "
				+ "student_id, "
				+ "batchId, "
				+ "amount, "
				+ "payment_detail, "
				+ "payment_mode, "
				+ "createdAt, "
				+ "updatedAt"
				
				+" from " + DatabaseTables.TABLE_NAME_FEE_TRANSACTIONS;

		String whereClause = " where student_id= ?"+ " && batchId = ?";
		String orderClause = " ORDER BY createdAt DESC";
		
		String pagination = " limit "+startOffset+","+ maxRowCount;
		
		sql = sql + whereClause+orderClause+pagination;
		
		
		try {
			RowMapper<FeeTransactionModel> rowMapper = new RowMapper<FeeTransactionModel>() {
				@Override
				public FeeTransactionModel mapRow(ResultSet rs, int rowNum) throws SQLException {
					
					FeeTransactionModel mi = new FeeTransactionModel();
					mi.setId(rs.getInt(1));;
					mi.setStudentId(rs.getInt(2));
					mi.setBatchId(rs.getInt(3));
					mi.setAmount(rs.getDouble(4));
					mi.setPaymentDetail(rs.getString(5));
					mi.setPaymentMode(rs.getInt(6));
					mi.setCreatedAt(rs.getString(7));
					mi.setUpdatedAt(rs.getString(8));
					
					return mi;
				}
			};
			list = (ArrayList<FeeTransactionModel>) jdbcTemplate.query(sql, rowMapper, studentId, batchId);
		} catch (Exception e) {
			DebugLog.print("FeeTransactionHelper::getTransactionList::Exception: " + e, true);
		}
		return list;
	}
	
	
	/**
	 * Create transaction
	 * 
	 * @param mi
	 * @return
	 */

	public int createTransaction(
			FeeTransactionModel pi, JdbcTemplate jdbcTemplate) {
		
		int result = 0;
		try {
			String updateAt = Utils.getUpdatedAtStamp();
			
			/**
			 * 
			 */
			// the mysql insert statement
			String query = "insert into " + DatabaseTables.TABLE_NAME_FEE_TRANSACTIONS
					+ " (student_id, batchId, amount, payment_detail, payment_mode, updatedAt)" 
					+ " values (?, ?, ?, ?, ?, ?)";

			
			result = jdbcTemplate.update(query,
			        new Object[] { 
			    			pi.getStudentId(),
			    			pi.getBatchId(),
			    			pi.getAmount(),
			    			pi.getPaymentDetail(),
			    			pi.getPaymentMode(),
			    			updateAt
			    			});
			
		} catch (Exception e) {
			DebugLog.print("FeeTransactionHelper::createAttendance::Exception: " + e, true);
		}
		
		return result;
	}

	/**
	 * Create transaction
	 * 
	 * @param mi
	 * @return
	 */

	public boolean updateTransaction(
			FeeTransactionModel pi, JdbcTemplate jdbcTemplate) {
		
		if (pi == null) {
			return false;
		} 

		boolean result = false;
		
		try {
			// the mysql update statement
			String updatedAt = Utils.getUpdatedAtStamp();

			/**
			 * , , , , , , created_by, created_date, , 
			 */
			String query = "update " + DatabaseTables.TABLE_NAME_FEE_TRANSACTIONS 
					+ " set amount = ?" + pi.getAmount()
					+ ", payment_mode = ?" + pi.getPaymentMode()
					
					+ ", updatedAt = ?" + updatedAt
					+ ", payment_detail = ?"+pi.getPaymentDetail()
					; 
			
			String whereClause = " where id = ?" + pi.getId();
			
			query = query+whereClause;
			
			jdbcTemplate.update(query,
			        new Object[] { 
			        		pi.getAmount(),
							pi.getPaymentMode(),
							updatedAt,
							pi.getPaymentDetail(),
			        		pi.getId()
			        		});
			
			result = true;		
			
		} catch (Exception e) {
			DebugLog.print("FeeTransactionHelper::updateTransaction::Exception: " + e, true);
		}
		
		return result;
	}
}




