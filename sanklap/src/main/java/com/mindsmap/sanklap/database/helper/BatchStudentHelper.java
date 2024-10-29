package com.mindsmap.sanklap.database.helper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.DatabaseConfig;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.database.DbUtils;
import com.mindsmap.sanklap.models.AttendanceModel;
import com.mindsmap.sanklap.models.BatchStudentModel;
import com.mindsmap.sanklap.models.StudentModel;

public class BatchStudentHelper {


	public BatchStudentHelper() {
	}

		/*
	 * Get Student's batch id
	 */

	public static int getBatchId(int studentId, JdbcTemplate jdbcTemplate) {

		int result = 0;

		String sql = "select batch_id"
				+" from " + DatabaseTables.TABLE_NAME_BATCH_STUDENT;


		String whereClause = " where student_id = ?";
		String pagination = " limit 1";
		String orderClause = " ORDER BY created_date DESC";
		sql = sql + whereClause + orderClause + pagination;

		try {

			RowMapper<BatchStudentModel> rowMapper = new RowMapper<BatchStudentModel>() {
				@Override
				public BatchStudentModel mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					BatchStudentModel mi = new BatchStudentModel();
					mi.setBatchId(rs.getInt(1));
					return mi;
				}
			};
			BatchStudentModel mi = jdbcTemplate.queryForObject(sql, rowMapper, studentId);
			if(mi != null && mi.getBatchId() > 0) {
				result = mi.getBatchId();
			}

		} catch (Exception e) {
			DebugLog.print("BatchStudentHelper::getBatchId::Exception: " + e, true);
		}
		return result;
	}

	/*
	 * Get Batch Student list
	 */

	public ArrayList<BatchStudentModel> getBatchStudentList(int batchId, JdbcTemplate jdbcTemplate) {

		ArrayList<BatchStudentModel> list = new ArrayList<BatchStudentModel>();

		String sql = "select "+"batchStudent.batch_student_id, "
				+ "batchStudent.batch_id, "
				+ "batchStudent.student_id, "


				+ "student.reg_no, "
				+ "student.first_name, "
				+ "student.last_name, "
				+ "student.image, "
				+ "student.mobile_no, "
				+ "student.alt_mobile_no "


				+" from " + DatabaseTables.TABLE_NAME_BATCH_STUDENT+ " batchStudent"

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_STUDENT + " student ON "
				+" batchStudent.student_id="+"student.student_id";


		String whereClause = " where batchStudent.batch_id = ?";

		sql = sql + whereClause;

		try {

			RowMapper<BatchStudentModel> rowMapper = new RowMapper<BatchStudentModel>() {
				@Override
				public BatchStudentModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					BatchStudentModel mi = new BatchStudentModel();
					mi.setBatchStudentId(rs.getInt(1));
					mi.setBatchId(rs.getInt(2));
					mi.setStudentId(rs.getInt(3));

					StudentModel tm = new StudentModel();
					tm.setId(mi.getStudentId());
					tm.setRegNo(rs.getString(4));
					tm.setFirstName(rs.getString(5));
					tm.setLastName(rs.getString(6));
					tm.setImage(rs.getString(7));
					tm.setMobileNo(rs.getString(8));
					tm.setAltMobileNo(rs.getString(9));

					mi.setStudentModel(tm);

					return mi;
				}
			};
			list = (ArrayList<BatchStudentModel>) jdbcTemplate.query(sql, rowMapper, batchId);


		} catch (Exception e) {
			DebugLog.print("BatchStudentHelper::getBatchStudentList::Exception: " + e, true);
		}
		return list;
	}

	/**
	 * Add student in batch
	 *
	 * @param mi
	 * @return
	 */

	public int createBatchStudent(
			BatchStudentModel pi, int createdBy, JdbcTemplate jdbcTemplate) {

		int result = 0;


		try {
			if(!checkStudentExist(pi.getStudentId(), jdbcTemplate)) {
				int isActive = 1;
				String updatedAt = Utils.getUpdatedAtStamp();
				// the mysql insert statement
				String query = "insert into " + DatabaseTables.TABLE_NAME_BATCH_STUDENT
						+ " (batch_id, student_id, is_active, created_by, created_date, updated_by, "
						+ "updated_date)"
						+ " values (?, ?, ?, ?, ?, ?, ?)";

				// create the mysql insert preparedstatement


				// execute the query
				result = jdbcTemplate.update(query,
				        new Object[] {
				        		pi.getBatchId(),
								pi.getStudentId(),
								isActive,
								createdBy,
								updatedAt,
								createdBy,
								updatedAt,
								});
			}else {
				result = -1;
			}


		} catch (Exception e) {
			DebugLog.print("FeeHelper::createBatchStudent::Exception: " + e, true);
		}

		return result;
	}

	/*
	 * Check student is exist in any batch
	 */

	private boolean checkStudentExist(int studentId, JdbcTemplate jdbcTemplate) {

		boolean result = false;
		String startYear = Utils.getTodayDate().split("-")[0];
		String endYear = ""+(Integer.parseInt(startYear)+1);

		String sql = "select "+"batch_student_id"

				+" from " + DatabaseTables.TABLE_NAME_BATCH_STUDENT + " batchStudent"

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_BATCH + " batch ON "
				+"batch.batch_id="+"batchStudent.batch_id";


		String whereClause = " where batchStudent.student_id = ?"
				+ " && (batch.batch_start_date like '"+startYear+"%'"
				+ " && batch.batch_end_date like '"+endYear+"%')";


		sql = sql + whereClause;

		try {

			RowMapper<BatchStudentModel> rowMapper = new RowMapper<BatchStudentModel>() {
				@Override
				public BatchStudentModel mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					BatchStudentModel mi = new BatchStudentModel();
					mi.setBatchStudentId(rs.getInt(1));
					return mi;
				}
			};
			BatchStudentModel mi = jdbcTemplate.queryForObject(sql, rowMapper, studentId);

			if(mi != null && mi.getBatchStudentId() > 0) {
				result = true;
			}
		} catch (Exception e) {
			DebugLog.print("BatchStudentHelper::checkStudentExist::Exception: " + e, true);
		}
		return result;
	}

	/**
	 * update Batch student
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateBatchStudent(BatchStudentModel pi, int updateBy, int isActive,
			JdbcTemplate jdbcTemplate) {

		if (pi == null) {
			return false;
		}

		boolean result = false;

		try {
			// the mysql update statement
			/**
			 * , , is_active, created_by, created_date, , "
					+ "updated_date
			 */

			String updatedAt = Utils.getUpdatedAtStamp();

			String query = "update " + DatabaseTables.TABLE_NAME_BATCH_STUDENT
					+ " set batch_id = " + pi.getBatchId()
					+ ", student_id = " + pi.getStudentId()
					+ ", updated_by = " + updateBy
					+ ", is_active = " + isActive

					+ ", updated_date = '" + updatedAt+"'"
					;

			String whereClause = " where batch_student_id = ?";

			query = query+whereClause;

			jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getBatchStudentId()
			        		});

			result = true;

		} catch (Exception e) {
			DebugLog.print("FeeHelper::updateBatchStudent::Exception: " + e, true);
		}

		return result;
	}

	/**
	 * update Batch student active status
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateBatchStudentActiveStatus(int id, int isActive, JdbcTemplate jdbcTemplate) {

		if (id <= 0) {
			return false;
		}

		boolean result = false;

		try {
			// the mysql update statement

			String query = "update " + DatabaseTables.TABLE_NAME_BATCH_STUDENT
					+ " set is_active = " + isActive;

			String whereClause = " where batch_student_id = ?";

			query = query+whereClause;

			jdbcTemplate.update(query,
			        new Object[] {
			        		id
			        		});

			result = true;

		} catch (Exception e) {
			DebugLog.print("FeeHelper::updateBatchStudentActiveStatus::Exception: " + e, true);
		}

		return result;
	}


	/**
	 * delete Student from batch
	 *
	 * @param mi
	 * @return
	 */

	public boolean deleteBatchStudent(int id, JdbcTemplate jdbcTemplate) {

		if (id ==0) {
			return false;
		}

		boolean result = false;

		try {
			String query = "Delete from " + DatabaseTables.TABLE_NAME_BATCH_STUDENT + " where batch_student_id = ?";

			jdbcTemplate.update(query,
			        new Object[] {
			        		id
			        		});
			result = true;

		} catch (Exception e) {
			DebugLog.print("FeeHelper::deleteBatchStudent::Exception: " + e, true);
		}

		return result;
	}


}



