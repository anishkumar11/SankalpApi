package com.mindsmap.sanklap.database.helper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.models.ExamSubjectResultModel;
import com.mindsmap.sanklap.models.StudentResultModel;
import com.mindsmap.sanklap.models.SubjectModel;

public class ExamResultHelper {


	public ExamResultHelper() {
	}




	/*
	 * Get Exam result student list
	 */

	public ArrayList<StudentResultModel> getExamStudentResultList(int examId, int page, JdbcTemplate jdbcTemplate) {

		int maxRowCount = 20;
		int startOffset = (page-1)*maxRowCount;


		ArrayList<StudentResultModel> list = new ArrayList<StudentResultModel>();

		String sql = "select DISTINCT examResult.student_id, "

				+ "student.first_name , "
				+ "student.last_name, "
				+ "student.reg_no, "
				+ "student.image"

				+" from " + DatabaseTables.TABLE_NAME_EXAM_RESULT+" examResult"
				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_STUDENT + " student ON "
				+"examResult.student_id="+"student.student_id";


		String whereClause = " where examResult.exam_id= ?";
		String orderClause = " ORDER BY student.first_name ASC"+" limit "+startOffset+","+ maxRowCount;

		sql = sql + whereClause+orderClause;

		try {

			RowMapper<StudentResultModel> rowMapper = new RowMapper<StudentResultModel>() {
				@Override
				public StudentResultModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					StudentResultModel mi = new StudentResultModel();
					mi.setExamId(examId);

					mi.setStudentId((rs.getInt(1)));
					mi.setFirstName(rs.getString(2));
					mi.setLastName(rs.getString(3));
					mi.setRegNo(rs.getString(4));
					mi.setImage(rs.getString(5));
					mi.setSubjectCount(getExamResultSubjectCount(examId, mi.getStudentId(), jdbcTemplate));

					return mi;
				}
			};
			list = (ArrayList<StudentResultModel>) jdbcTemplate.query(sql, rowMapper, examId);

		} catch (Exception e) {
			DebugLog.print("ExamResultHelper::getExamStudentResultList::Exception: " + e, true);
		}
		return list;
	}

	/*
	 * Get Exam result student list
	 */

	private int getExamResultSubjectCount(int examId, int studentId, JdbcTemplate jdbcTemplate) {

		int count = 0;
		String sql = "select COUNT(exam_subject_id)"

				+" from " + DatabaseTables.TABLE_NAME_EXAM_RESULT;

		String whereClause = " where exam_id= "+examId + " && student_id = "+studentId;;

		sql = sql + whereClause;

		try {

			RowMapper<String> rowMapper = new RowMapper<String>() {
				@Override
				public String mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					return String.valueOf(rs.getInt(1));
				}
			};
			String mi = jdbcTemplate.queryForObject(sql, rowMapper, studentId);
			if(!Utils.isEmpty(mi)) {
				count = Integer.parseInt(mi);
			}

		} catch (Exception e) {
			DebugLog.print("ExamResultHelper::getExamStudentResultList::Exception: " + e, true);
		}
		return count;
	}

	/*
	 * Get Exam result subject list
	 */

	public ArrayList<ExamSubjectResultModel> getExamResultList(int examId, int studentId, JdbcTemplate jdbcTemplate) {

		ArrayList<ExamSubjectResultModel> list = new ArrayList<ExamSubjectResultModel>();

		String sql = "select "+"examResult.id, "
				+ "examResult.exam_id, "
				+ "examResult.exam_subject_id, "
				+ "examResult.student_id, "
				+ "examResult.scored_marks, "
				+ "examResult.grade, "

				+ "subject.subject_id, "
				+ "subject.subject_name, "
				+ "subject.standard_id"

				+" from " + DatabaseTables.TABLE_NAME_EXAM_RESULT+" examResult"
				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_SUBJECT + " subject ON "
				+"examResult.exam_subject_id="+"subject.subject_id";


		String whereClause = " where examResult.exam_id= ?" + " && examResult.student_id = ?";
		String orderClause = " ORDER BY subject.subject_name ASC";

		sql = sql + whereClause+orderClause;

		try {

			RowMapper<ExamSubjectResultModel> rowMapper = new RowMapper<ExamSubjectResultModel>() {
				@Override
				public ExamSubjectResultModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					ExamSubjectResultModel mi = new ExamSubjectResultModel();
					mi.setId(rs.getInt(1));
					mi.setExamId(rs.getInt(2));
					mi.setExamSubjectId(rs.getInt(3));
					mi.setStudentId(rs.getInt(4));
					mi.setScoredMarks(rs.getDouble(5));
					mi.setGrade(rs.getString(6));

					SubjectModel si = new SubjectModel();
					si.setId(rs.getInt(7));
					si.setSubjectName(rs.getString(8));
					si.setStandardId(rs.getInt(9));

					mi.setSubject(si);


					return mi;
				}
			};
			list = (ArrayList<ExamSubjectResultModel>) jdbcTemplate.query(sql, rowMapper, examId, studentId);

		} catch (Exception e) {
			DebugLog.print("ExamResultHelper::getExamResultList::Exception: " + e, true);
		}
		return list;
	}


	/**
	 * Create Exam result
	 *
	 * @param mi
	 * @return
	 */

	public int createExamResult(
			ExamSubjectResultModel pi, JdbcTemplate jdbcTemplate) {

		int result = 0;

		try {
			String updateAt = Utils.getUpdatedAtStamp();

			// the mysql insert statement
			String query = "insert into " + DatabaseTables.TABLE_NAME_EXAM_RESULT
					+ " (exam_id, exam_subject_id, student_id, scored_marks, grade, updatedAt)"
					+ " values (?, ?, ?, ?, ?, ?)";

			result = jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getExamId(),
			    			pi.getExamSubjectId(),
			    			pi.getStudentId(),
			    			pi.getScoredMarks(),
			    			pi.getGrade(),
			    			updateAt,
			        		});

		} catch (Exception e) {
			DebugLog.print("ExamResultHelper::createExamResult::Exception: " + e, true);
		}

		return result;
	}

	/*
	 * Update exam detail
	 */

	public boolean updateExamResult(ExamSubjectResultModel pi, JdbcTemplate jdbcTemplate) {

		if (pi == null) {
			return false;
		}

		boolean result = false;

		try {
			// the mysql update statement

			String query = "update " + DatabaseTables.TABLE_NAME_EXAM_RESULT
					+ " set exam_id = ?"
					+ ", exam_subject_id = ?"
					+ ", student_id = ?"
					+ ", scored_marks = ?"
					+ ", grade = ?"
					+ " where id = ?";


			jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getExamId(),
							pi.getExamSubjectId(),
							pi.getStudentId(),
							pi.getScoredMarks(),
							pi.getGrade(),
							pi.getId()
			        		});

			result = true;

		} catch (Exception e) {
			DebugLog.print("ExamResultHelper::updateExamResult::Exception: " + e, true);
		}

		return result;
	}

}
