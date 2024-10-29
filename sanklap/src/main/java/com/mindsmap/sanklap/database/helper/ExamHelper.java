package com.mindsmap.sanklap.database.helper;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.models.ExamModel;

public class ExamHelper {

	public ExamHelper() {
	}

	/*
	 * Get Exam list
	 */

	public ArrayList<ExamModel> getExamList(int standardId, int branchId, JdbcTemplate jdbcTemplate) {

		ArrayList<ExamModel> list = new ArrayList<ExamModel>();

		String sql = "select "
				+"exam.id,  "
				+"exam.title, "
				+"exam.standard_id, "
				+"exam.exam_date, "
				+"exam.branch_id, "
				+"exam.createdAt, "
				+"exam.updatedAt, "

				+ "branch.branch_name, "
				+ "standard.standard_name"

				+" from " + DatabaseTables.TABLE_NAME_EXAM+" exam"
				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_BRANCH + " branch ON "
				+"exam.branch_id="+"branch.branch_id"
				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_STANDARD + " standard ON "
				+"exam.standard_id="+"standard.standard_id";


		String whereClause = " where exam.standard_id= ?"+ " && exam.branch_id = ?";
		String orderClause = " ORDER BY exam.exam_date ASC";

		sql = sql + whereClause+orderClause;

		try {

			RowMapper<ExamModel> rowMapper = new RowMapper<ExamModel>() {
				@Override
				public ExamModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					ExamModel mi = new ExamModel();
					mi.setId(rs.getInt(1));
					mi.setTitle(rs.getString(2));
					mi.setStandardId(rs.getInt(3));
					mi.setExamDate(rs.getString(4));
					mi.setBranchId(rs.getInt(5));
					mi.setCreatedAt(rs.getString(6));
					mi.setUpdatedAt(rs.getString(7));

					mi.setBranchName(rs.getString(8));
					mi.setStandardName(rs.getString(9));

					return mi;
				}
			};
			list = (ArrayList<ExamModel>) jdbcTemplate.query(sql, rowMapper, standardId, branchId);

		} catch (Exception e) {
			DebugLog.print("ExamHelper::getExamList::Exception: " + e, true);
		}
		return list;
	}


	/**
	 * Create Exam
	 *
	 * @param mi
	 * @return
	 */

	public int createExam(
			ExamModel pi, JdbcTemplate jdbcTemplate) {

		int result = 0;
		ResultSet resultSet = null;
		PreparedStatement preparedStmt = null;

		try {
			String updateAt = Utils.getUpdatedAtStamp();

			// the mysql insert statement
			String query = "insert into " + DatabaseTables.TABLE_NAME_EXAM
					+ " (title, exam_date, standard_id, branch_id, updatedAt)"
					+ " values (?, ?, ?, ?, ?)";

			// create the mysql insert preparedstatement
			result = jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getTitle(),
			    			pi.getExamDate(),
			    			pi.getStandardId(),
			    			pi.getBranchId(),
			    			updateAt,
			        		});

		} catch (Exception e) {
			DebugLog.print("ExamHelper::createSyllabusTopic::Exception: " + e, true);
		}

		return result;
	}

	/*
	 * Update exam detail
	 */

	public boolean updateExamDetail(ExamModel pi, JdbcTemplate jdbcTemplate) {

		if (pi == null) {
			return false;
		}

		boolean result = false;

		try {
			String query = "update " + DatabaseTables.TABLE_NAME_EXAM
					+ " set title = ?"
					+ ", exam_date = ?"
					+ ", standard_id = ?"
					+ ", branch_id = ?"
					+ " where id = ?";


			jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getTitle(),
			        		pi.getExamDate(),
			        		pi.getStandardId(),
			        		pi.getBranchId(),
			        		pi.getId()
			        		});

			result = true;

		} catch (Exception e) {
			DebugLog.print("ExamHelper::updateExamDetail::Exception: " + e, true);
		}

		return result;
	}

}




