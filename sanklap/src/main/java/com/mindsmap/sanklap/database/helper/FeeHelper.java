package com.mindsmap.sanklap.database.helper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.models.FeeModel;
import com.mindsmap.sanklap.models.StudentFeeModel;

public class FeeHelper {


	public FeeHelper() {
	}


	/*
	 * Get Student Fee list
	 */

	public ArrayList<StudentFeeModel> getStudentFeeList(int batchId, String searchkeyword, int page, JdbcTemplate jdbcTemplate) {

		ArrayList<StudentFeeModel> list = new ArrayList<StudentFeeModel>();

		String searchquery = "";
		if(!Utils.isEmpty(searchkeyword)) {
			searchquery = " && LOWER(student.reg_no) LIKE "+"'%"+searchkeyword.toLowerCase()+"%'";
		}

		String sql = "select "+"batchStudent.batch_id, "
				+ "batchStudent.student_id, "

				+ "student.reg_no, "
				+ "student.first_name, "
				+ "student.last_name, "
				+ "student.image, "

				+ "standard.standard_id, "
				+ "standard.standard_name, "

				+ "batch.batch_name"

				+" from " + DatabaseTables.TABLE_NAME_BATCH_STUDENT+ " batchStudent"

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_STUDENT + " student ON "
				+ "batchStudent.student_id="+"student.student_id"+searchquery

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_BATCH + " batch ON "
				+ "batchStudent.batch_id="+"batch.batch_id"

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_STANDARD + " standard ON "
				+ "batch.standard_id="+"standard.standard_id";


		String whereClause = " where batchStudent.batch_id = ?";


		sql = sql + whereClause;

		try {

			RowMapper<StudentFeeModel> rowMapper = new RowMapper<StudentFeeModel>() {
				@Override
				public StudentFeeModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					StudentFeeModel mi = new StudentFeeModel();
					mi.setBatchId(rs.getInt(1));
					mi.setStudentId(rs.getInt(2));
					mi.setRegNo(rs.getString(3));
					mi.setFirstName(rs.getString(4));
					mi.setLastName(rs.getString(5));
					mi.setImage(rs.getString(6));
					mi.setStandardId(rs.getInt(7));

					mi.setStandardName(rs.getString(8));
					mi.setBatchName(rs.getString(9));

					mi.setTotalAmount(getTotalFee(mi.getStudentId(), mi.getBatchId(), jdbcTemplate));
					mi.setTotalPaidAmount(new FeeTransactionHelper().getTotalFeePaid(mi.getStudentId(), mi.getBatchId(), jdbcTemplate));
					mi.setTotalPendingAmount(mi.getTotalAmount() - mi.getTotalPaidAmount());

					return mi;
				}
			};
			list = (ArrayList<StudentFeeModel>) jdbcTemplate.query(sql, rowMapper, batchId);
		} catch (Exception e) {
			DebugLog.print("StandardHelper::getStudentFeeList::Exception: " + e, true);
		}

		return list;
	}

	/*
	 * Get Student Fee detail
	 */

	public StudentFeeModel getStudentFeeDetail(int studentId, JdbcTemplate jdbcTemplate) {

		StudentFeeModel mi = null;

		String sql = "select "+"batchStudent.batch_id, "
				+ "batchStudent.student_id, "

				+ "student.reg_no, "
				+ "student.first_name, "
				+ "student.last_name, "
				+ "student.image, "

				+ "standard.standard_id, "
				+ "standard.standard_name, "

				+ "batch.batch_name, "
				+ "branch.branch_id, "
				+ "branch.branch_name"

				+" from " + DatabaseTables.TABLE_NAME_BATCH_STUDENT+ " batchStudent"

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_STUDENT + " student ON "
				+ "batchStudent.student_id="+"student.student_id"

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_BATCH + " batch ON "
				+ "batchStudent.batch_id="+"batch.batch_id"

				+ " LEFT JOIN "+ DatabaseTables.TABLE_NAME_BRANCH + " branch ON "
				+ "student.branch_id="+"branch.branch_id"

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_STANDARD + " standard ON "
				+ "batch.standard_id="+"standard.standard_id";


		String whereClause = " where batchStudent.student_id =?";
		String pagination = " limit 1";

		sql = sql + whereClause+pagination;

		try {


			RowMapper<StudentFeeModel> rowMapper = new RowMapper<StudentFeeModel>() {
				@Override
				public StudentFeeModel mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					StudentFeeModel mi = new StudentFeeModel();
					mi.setBatchId(rs.getInt(1));
					mi.setStudentId(rs.getInt(2));
					mi.setRegNo(rs.getString(3));
					mi.setFirstName(rs.getString(4));
					mi.setLastName(rs.getString(5));
					mi.setImage(rs.getString(6));
					mi.setStandardId(rs.getInt(7));

					mi.setStandardName(rs.getString(8));
					mi.setBatchName(rs.getString(9));
					mi.setBranchId(rs.getInt(10));
					mi.setBranchName(rs.getString(11));

					mi.setTotalAmount(getTotalFee(mi.getStudentId(), mi.getBatchId(), jdbcTemplate));
					mi.setTotalPaidAmount(new FeeTransactionHelper().getTotalFeePaid(mi.getStudentId(), mi.getBatchId(), jdbcTemplate));
					mi.setTotalPendingAmount(mi.getTotalAmount() - mi.getTotalPaidAmount());

					return mi;
				}
			};
			mi = jdbcTemplate.queryForObject(sql, rowMapper, studentId);

		} catch (Exception e) {
			DebugLog.print("StandardHelper::getStudentFeeDetail::Exception: " + e, true);
		}
		return mi;
	}

	/*
	 * Get Total fee list
	*/

	public double getTotalFee(int studentId, int batchId, JdbcTemplate jdbcTemplate) {


		double total = 0;

		String sql = "select SUM(fee_amount) AS totalFee"

				+" from " + DatabaseTables.TABLE_NAME_FEE;

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
			DebugLog.print("FeeHelper::getTotalFee::Exception: " + e, true);
		}
		return total;
	}

	/*
	 * Get Fee list
	 */

	public ArrayList<FeeModel> getFeeList(int studentId, int batchId, JdbcTemplate jdbcTemplate) {

		ArrayList<FeeModel> list = new ArrayList<FeeModel>();

		String sql = "select "+"id, "
				+ "student_id, "
				+ "fee_amount, "
				+ "batchId, "
				+ "title, "
				+ "createdAt,"
				+ "updatedAt"

				+" from " + DatabaseTables.TABLE_NAME_FEE;

		String whereClause = " where student_id= ?" + " && batchId = ?";
		String orderClause = " ORDER BY updatedAt DESC";

		sql = sql + whereClause+orderClause;

		try {

			RowMapper<FeeModel> rowMapper = new RowMapper<FeeModel>() {
				@Override
				public FeeModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					FeeModel mi = new FeeModel();
					mi.setId(rs.getInt(1));
					mi.setStudentId(rs.getInt(2));
					mi.setTotalFee(rs.getDouble(3));
					mi.setBatchId(rs.getInt(4));
					mi.setTitle(rs.getString(5));
					mi.setCreatedAt(rs.getString(6));
					mi.setUpdatedAt(rs.getString(7));


					return mi;
				}
			};
			list = (ArrayList<FeeModel>) jdbcTemplate.query(sql, rowMapper, studentId, batchId);


		} catch (Exception e) {
			DebugLog.print("FeeHelper::getFeeList::Exception: " + e, true);
		}
		return list;
	}


	/**
	 * Create Fee
	 *
	 * @param mi
	 * @return
	 */

	public int createStudentFee(
			FeeModel pi, JdbcTemplate jdbcTemplate) {

		int result = 0;
		try {
			String updateAt = Utils.getUpdatedAtStamp();

			/**
			 *
			 */
			// the mysql insert statement
			String query = "insert into " + DatabaseTables.TABLE_NAME_FEE
					+ " (student_id, batchId, fee_amount, title, updatedAt)"
					+ " values (?, ?, ?, ?, ?)";


			result = jdbcTemplate.update(query,
			        new Object[] {
			    			pi.getStudentId(),
			    			pi.getBatchId(),
			    			pi.getTotalFee(),
			    			pi.getTitle(),
			    			updateAt
			        		});

		} catch (Exception e) {
			DebugLog.print("FeeHelper::createStudentFee::Exception: " + e, true);
		}

		return result;
	}

	/**
	 * updateStudentFee
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateStudentFee(FeeModel pi, JdbcTemplate jdbcTemplate) {

		if (pi == null) {
			return false;
		}

		boolean result = false;

		try {
			// the mysql update statement
			String updateAt = Utils.getUpdatedAtStamp();

			String query = "update " + DatabaseTables.TABLE_NAME_FEE
					+ " set batchId = ?"
					+ ", title = ?"
					+ ", updatedAt = ?"
					+", fee_amount = ?"
					+ " where id = ?";

			jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getBatchId(),
							pi.getTitle(),
							updateAt,
							pi.getTotalFee(),
							 pi.getId()
			        		});

			result = true;

		} catch (Exception e) {
			DebugLog.print("FeeHelper::updateStudentFee::Exception: " + e, true);
		}
		return result;
	}

	/**
	 * deleteStudentFee
	 *
	 * @param mi
	 * @return
	 */

	public boolean deleteStudentFee(int id, JdbcTemplate jdbcTemplate) {

		if (id ==0) {
			return false;
		}

		boolean result = false;

		try {
			String query = "Delete from " + DatabaseTables.TABLE_NAME_FEE + " where id = ?";

			jdbcTemplate.update(query,
			        new Object[] {
			        		id});
			result = true;

		} catch (Exception e) {
			DebugLog.print("FeeHelper::updateStudentFee::Exception: " + e, true);
		}

		return result;
	}

}




