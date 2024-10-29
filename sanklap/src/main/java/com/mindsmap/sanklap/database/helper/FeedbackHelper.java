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
import com.mindsmap.sanklap.models.FeedbackModel;
import com.mindsmap.sanklap.models.FeedbackModel;

public class FeedbackHelper {


	public FeedbackHelper() {
	}


	/*
	 * Get Feedback item list
	 */

	public ArrayList<FeedbackModel> getFeedbackItemList(int branchId, int status, int page, JdbcTemplate jdbcTemplate) {

		int maxRowCount = 20;
		int startOffset = (page-1)*maxRowCount;


		ArrayList<FeedbackModel> list = new ArrayList<FeedbackModel>();

		String sql = "select "+"feedback.feeback_id, "
				+ "feedback.title, "
				+ "feedback.description, "
				+ "feedback.isactive, "
				+ "feedback.created_date, "

				+ "batch.batch_id, "
				+ "batch.batch_name, "
				+ "standard.standard_id, "
				+ "standard.standard_name, "

				+ "branch.branch_id, "
				+ "branch.branch_name, "

				+ "student.student_id, "
				+ "student.first_name, "
				+ "student.last_name, "
				+ "student.reg_no, "
				+ "student.image"

				+" from " + DatabaseTables.TABLE_NAME_FEEDBACK+ " feedback"

				+ " LEFT JOIN "+ DatabaseTables.TABLE_NAME_BATCH + " batch ON "
				+ "feedback.batchId="+"batch.batch_id"

				+ " LEFT JOIN "+ DatabaseTables.TABLE_NAME_BRANCH + " branch ON "
				+ "feedback.branchId="+"branch.branch_id"

				+ " LEFT JOIN "+ DatabaseTables.TABLE_NAME_STANDARD + " standard ON "
				+ "batch.standard_id="+"standard.standard_id"

				+ " LEFT JOIN "+ DatabaseTables.TABLE_NAME_STUDENT + " student ON "
				+ "feedback.studentId="+"student.student_id";

		String whereClause = " where feedback.branchId= "+branchId;
		if(status <= 1) {
			whereClause = whereClause + " && feedback.isactive= "+status;
		}
		String orderClause = " ORDER BY feedback.created_date DESC";
		String pagination = " limit "+startOffset+","+ maxRowCount;

		sql = sql + whereClause+orderClause+pagination;

		try {

			RowMapper<FeedbackModel> rowMapper = new RowMapper<FeedbackModel>() {
				@Override
				public FeedbackModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					FeedbackModel mi = new FeedbackModel();
					mi.setId(rs.getInt(1));
					mi.setTitle(rs.getString(2));
					mi.setDescription(rs.getString(3));
					mi.setIsActive(rs.getInt(4));
					mi.setCreatedDate(rs.getString(5));

					mi.setBatchId(rs.getInt(6));
					mi.setBatchName(rs.getString(7));
					mi.setStandardId(rs.getInt(8));
					mi.setStandardName(rs.getString(9));
					mi.setBranchId(rs.getInt(10));
					mi.setBranchName(rs.getString(11));

					mi.setStduentId(rs.getInt(12));
					String name = rs.getString(13) + " "+rs.getString(14);
					mi.setStudentName(name);
					mi.setRegNo(rs.getString(15));
					mi.setImage(rs.getString(16));


					return mi;
				}
			};
			list = (ArrayList<FeedbackModel>) jdbcTemplate.query(sql, rowMapper);
		} catch (Exception e) {
			DebugLog.print("FeedbackHelper::getFeedbackItemList::Exception: " + e, true);
		}
		return list;
	}

	/**
	 * Create Feedback
	 * @param mi
	 * @return
	 */

	public int createFeedback(
			FeedbackModel pi, JdbcTemplate jdbcTemplate) {

		int result = 0;

		try {
			String updateAt = Utils.getUpdatedAtStamp();

			/**
			 *
			 */
			// the mysql insert statement
			String query = "insert into " + DatabaseTables.TABLE_NAME_FEEDBACK
					+ " (studentId, batchId, branchId, title, description, isactive, created_by, updated_by, updated_date)"
					+ " values (?, ?, ?, ?, ?, ?, ?, ?, ?)";

			// create the mysql insert preparedstatement



			result = jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getStduentId(),
			    			pi.getBatchId(),
			    			pi.getBranchId(),
			    			pi.getTitle(),
			    			pi.getDescription(),

			    			pi.getIsActive(),
			    			1,
			    			1,
			    			updateAt,
			    			});

		} catch (Exception e) {
			DebugLog.print("HomeWorkHelper::createFeedback::Exception: " + e, true);
		}

		return result;
	}
}





