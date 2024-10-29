package com.mindsmap.sanklap.database.helper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.models.BatchModel;
import com.mindsmap.sanklap.models.StandardModel;
import com.mindsmap.sanklap.models.TeacherModel;

public class BatchHelper {

	public BatchHelper() {
	}



	/*
	 * Get Batch list
	 */

	public ArrayList<BatchModel> getBatchList(int branchId, int standardId, JdbcTemplate jdbcTemplate) {

		ArrayList<BatchModel> list = new ArrayList<BatchModel>();
		String currentYear = Utils.getTodayDate().split("-")[0];

		String sql = "select "+"batch.batch_id, "
				+ "batch.batch_name, "
				+ "batch.batch_start_date, "
				+ "batch.batch_end_date, "
				+ "batch.teacher_id, "
				+ "batch.standard_id, "
				+ "batch.Branch_id, "
				+ "batch.is_active, "


				+ "teacher.teacher_id, "
				+ "teacher.reg_no, "
				+ "teacher.first_name, "
				+ "teacher.last_name, "
				+ "teacher.image, "
				+ "teacher.mobile_no, "
				+ "teacher.alt_mobile_no, "

				+ "standard.standard_id, "
				+ "standard.standard_name"

				+" from " + DatabaseTables.TABLE_NAME_BATCH+ " batch"

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_TEACHERS + " teacher ON "
				+"batch.teacher_id="+"teacher.teacher_id"

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_STANDARD + " standard ON "
				+"batch.standard_id="+"standard.standard_id";


		String whereClause = " where batch.Branch_id = ?" + " && batch.standard_id = ?"
				+ " && (batch.batch_start_date like '"+currentYear+"%'"
				+ " OR batch.batch_end_date like '"+currentYear+"%')";

		sql = sql + whereClause;


		try {

			RowMapper<BatchModel> rowMapper = new RowMapper<BatchModel>() {
				@Override
				public BatchModel mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					BatchModel mi = new BatchModel();
					mi.setId(rs.getInt(1));
					mi.setBatchName(rs.getString(2));
					mi.setBatchStartDate(rs.getString(3));
					mi.setBatchEndDate(rs.getString(4));
					mi.setTeacherId(rs.getInt(5));
					mi.setStandardId(rs.getInt(6));
					mi.setBranchId(rs.getInt(7));
					mi.setIsActive(rs.getInt(8));

					TeacherModel tm = new TeacherModel();
					tm.setId(rs.getInt(9));
					tm.setRegNo(rs.getString(10));
					tm.setFirstName(rs.getString(11));
					tm.setLastName(rs.getString(12));
					tm.setImage(rs.getString(13));
					tm.setMobileNo(rs.getString(14));
					tm.setAltMobileNo(rs.getString(15));

					mi.setTeacher(tm);

					StandardModel standardModel = new StandardModel();
					standardModel.setId(rs.getInt(16));
					standardModel.setName(rs.getString(17));

					mi.setStandard(standardModel);

					return mi;
				}
			};
			list = (ArrayList<BatchModel>) jdbcTemplate.query(sql, rowMapper, branchId, standardId);



		} catch (Exception e) {
			DebugLog.print("StandardHelper::getStandardList::Exception: " + e, true);
		}
		return list;
	}

	/*
	 * Get batch detail
	 */

	public BatchModel getBatchDetail(int batchId, JdbcTemplate jdbcTemplate) {

		BatchModel mi = null;


		String sql = "select "+"batch.batch_id, "
				+ "batch.batch_name, "
				+ "batch.batch_start_date, "
				+ "batch.batch_end_date, "
				+ "batch.teacher_id, "
				+ "batch.standard_id, "
				+ "batch.is_active, "

				+ "teacher.teacher_id, "
				+ "teacher.reg_no, "
				+ "teacher.first_name, "
				+ "teacher.last_name, "
				+ "teacher.image, "
				+ "teacher.mobile_no, "
				+ "teacher.alt_mobile_no, "

				+ "standard.standard_id, "
				+ "standard.standard_name, "

				+ "branch.branch_id, "
				+ "branch.branch_name"

				+" from " + DatabaseTables.TABLE_NAME_BATCH+ " batch"

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_BRANCH + " branch ON "
				+ "batch.Branch_id="+"branch.branch_id"

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_TEACHERS + " teacher ON "
				+"batch.teacher_id="+"teacher.teacher_id"

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_STANDARD + " standard ON "
				+"batch.standard_id="+"standard.standard_id";


		String whereClause = " where batch.batch_id = ?";
		String pagination = " limit 1";
		sql = sql + whereClause +  pagination;

		try {

			RowMapper<BatchModel> rowMapper = new RowMapper<BatchModel>() {
				@Override
				public BatchModel mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					BatchModel mi = new BatchModel();

					mi.setId(rs.getInt(1));
					mi.setBatchName(rs.getString(2));
					mi.setBatchStartDate(rs.getString(3));
					mi.setBatchEndDate(rs.getString(4));
					mi.setTeacherId(rs.getInt(5));
					mi.setStandardId(rs.getInt(6));
					mi.setIsActive(rs.getInt(7));

					TeacherModel tm = new TeacherModel();
					tm.setId(rs.getInt(8));
					tm.setRegNo(rs.getString(9));
					tm.setFirstName(rs.getString(10));
					tm.setLastName(rs.getString(11));
					tm.setImage(rs.getString(12));
					tm.setMobileNo(rs.getString(13));
					tm.setAltMobileNo(rs.getString(14));

					mi.setTeacher(tm);

					StandardModel standardModel = new StandardModel();
					standardModel.setId(rs.getInt(15));
					standardModel.setName(rs.getString(16));

					mi.setStandard(standardModel);

					mi.setBranchId(rs.getInt(17));
					mi.setBranchName(rs.getString(18));


					return mi;
				}
			};
			mi = jdbcTemplate.queryForObject(sql, rowMapper, batchId);

		} catch (Exception e) {
			DebugLog.print("BatchHelper::getBatchDetail::Exception: " + e, true);
		}
		return mi;
	}

	/**
	 * Create Batch
	 *
	 * @param mi
	 * @return
	 */

	public int createBatch(
			BatchModel pi, int createdBy,
			JdbcTemplate jdbcTemplate) {

		int result = 0;
		try {

			String updatedAt = Utils.getUpdatedAtStamp();
			// the mysql insert statement
			String query = "insert into " + DatabaseTables.TABLE_NAME_BATCH
					+ " (batch_name, standard_id, teacher_id, batch_start_date, batch_end_date, is_active, "
					+ "created_by, created_date, updated_by, updated_date, Branch_id)"
					+ " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";


			result = jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getBatchName(),
			    			pi.getStandardId(),
			    			pi.getTeacherId(),
			    			pi.getBatchStartDate(),
			    			pi.getBatchEndDate(),
			    			pi.getIsActive(),
			    			createdBy,
			    			updatedAt,
			    			createdBy,
			    			updatedAt,
			    			pi.getBranchId(),
			        		});

		} catch (Exception e) {
			DebugLog.print("FeeHelper::createBatch::Exception: " + e, true);
		}

		return result;
	}

	/**
	 * update Batch
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateBatch(BatchModel pi, int updateBy,
			JdbcTemplate jdbcTemplate) {

		if (pi == null) {
			return false;
		}

		boolean result = false;
		try {
			// the mysql update statement

			String updatedAt = Utils.getUpdatedAtStamp();

			String query = "update " + DatabaseTables.TABLE_NAME_BATCH
					+ " set Branch_id = ?"
					+ ", teacher_id = ?"
					+ ", standard_id = ?"
					+ ", updated_by = ?"

					+ ", updated_date = ?"
					+ ", batch_name = ?"
					+ ", batch_start_date = ?"
					+ ", batch_end_date = ?"
					;

			String whereClause = " where batch_id = ?";

			query = query+whereClause;

			jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getBranchId(),
			        		pi.getTeacherId(),
			        		pi.getStandardId(),
			        		updateBy,
			        		updatedAt,
			        		pi.getBatchName(),
			        		pi.getBatchStartDate(),
			        		pi.getBatchEndDate(),
			        		pi.getId()
			        		});

			result = true;

		} catch (Exception e) {
			DebugLog.print("FeeHelper::updateBatch::Exception: " + e, true);
		}

		return result;
	}

	/**
	 * update Batch active status
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateBatchActiveStatus(int id, int isActive,
			JdbcTemplate jdbcTemplate) {

		if (id <= 0) {
			return false;
		}

		boolean result = false;

		try {
			// the mysql update statement

			String query = "update " + DatabaseTables.TABLE_NAME_BATCH
					+ " set is_active = ?";

			String whereClause = " where batch_id = ?";

			query = query+whereClause;

			jdbcTemplate.update(query,
	        new Object[] {
	        		isActive,
	        		id
	        		});
			result = true;

		} catch (Exception e) {
			DebugLog.print("FeeHelper::updateTeacherActiveStatus::Exception: " + e, true);
		}
		return result;
	}
}


