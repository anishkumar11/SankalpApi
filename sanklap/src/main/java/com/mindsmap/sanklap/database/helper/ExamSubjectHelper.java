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
import com.mindsmap.sanklap.models.ExamSubjectModel;
import com.mindsmap.sanklap.models.ExamSubjectModel;
import com.mindsmap.sanklap.models.SubjectModel;

public class ExamSubjectHelper {


	public ExamSubjectHelper() {
	}


	/*
	 * Get Exam subject list
	 */

	public ArrayList<ExamSubjectModel> getExamSubjectList(int examId, JdbcTemplate jdbcTemplate) {

		ArrayList<ExamSubjectModel> list = new ArrayList<ExamSubjectModel>();

		String sql = "select "+"examSubject.id, "
				+ "examSubject.exam_id, "
				+ "examSubject.subject_id, "
				+ "examSubject.total_marks, "

				+ "subject.subject_id, "
				+ "subject.subject_name, "
				+ "subject.standard_id"

				+" from " + DatabaseTables.TABLE_NAME_EXAM_SUBJECT+" examSubject"
				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_SUBJECT + " subject ON "
				+"examSubject.subject_id="+"subject.subject_id";


		String whereClause = " where examSubject.exam_id= ?";
		String orderClause = " ORDER BY subject.subject_name ASC";

		sql = sql + whereClause+orderClause;

		try {

			RowMapper<ExamSubjectModel> rowMapper = new RowMapper<ExamSubjectModel>() {
				@Override
				public ExamSubjectModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					ExamSubjectModel mi = new ExamSubjectModel();
					mi.setId(rs.getInt(1));
					mi.setExamId(rs.getInt(2));
					mi.setSubjectId(rs.getInt(3));
					mi.setTotalMarks(rs.getInt(4));

					SubjectModel si = new SubjectModel();
					si.setId(rs.getInt(5));
					si.setSubjectName(rs.getString(6));
					si.setStandardId(rs.getInt(7));

					mi.setSubject(si);

					return mi;
				}
			};
			list = (ArrayList<ExamSubjectModel>) jdbcTemplate.query(sql, rowMapper, examId);
		} catch (Exception e) {
			DebugLog.print("ExamSubjectHelper::getExamSubjectList::Exception: " + e, true);
		}
		return list;
	}


	/**
	 * Create Exam
	 *
	 * @param mi
	 * @return
	 */

	public int createExamSubject(
			ExamSubjectModel pi, JdbcTemplate jdbcTemplate) {

		int result = 0;

		try {
			String updateAt = Utils.getUpdatedAtStamp();

			// the mysql insert statement
			String query = "insert into " + DatabaseTables.TABLE_NAME_EXAM_SUBJECT
					+ " (exam_id, subject_id, total_marks, updatedAt)"
					+ " values (?, ?, ?, ?)";


			result = jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getExamId(),
			    			pi.getSubjectId(),
			    			pi.getTotalMarks(),
			    			updateAt
			    			});

		} catch (Exception e) {
			DebugLog.print("ExamSubjectHelper::createSyllabusTopic::Exception: " + e, true);
		}

		return result;
	}

	/*
	 * Update exam detail
	 */

	public boolean updateExamSubject(ExamSubjectModel pi, JdbcTemplate jdbcTemplate) {

		if (pi == null) {
			return false;
		}

		boolean result = false;
		try {
			// the mysql update statement

			String query = "update " + DatabaseTables.TABLE_NAME_EXAM_SUBJECT
					+ " set exam_id = ?" + pi.getExamId()
					+ ", subject_id = ?" + pi.getSubjectId()
					+ ", total_marks = ?" + pi.getTotalMarks()
					+ " where id = ?" + pi.getId();

			jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getExamId(),
							pi.getSubjectId(),
							pi.getTotalMarks(),
							pi.getId()
			    			});

			result = true;

		} catch (Exception e) {
			DebugLog.print("ExamSubjectHelper::updateExamSubject::Exception: " + e, true);
		}

		return result;
	}

}




