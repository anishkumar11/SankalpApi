package com.mindsmap.sanklap.database.helper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.AttendanceStatus;
import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.DatabaseConfig;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.database.DbUtils;
import com.mindsmap.sanklap.models.AdminUserModel;
import com.mindsmap.sanklap.models.AttendanceModel;
import com.mindsmap.sanklap.models.BatchModel;
import com.mindsmap.sanklap.models.BatchStudentModel;
import com.mindsmap.sanklap.models.OverallAttendanceModel;
import com.mindsmap.sanklap.models.StudentAttendanceModel;
import com.mindsmap.sanklap.models.StudentModel;

public class AttendanceHelper {


	public AttendanceHelper() {
	}

	/*
	 * Get Batch Student attendance list
	 */

	public ArrayList<StudentAttendanceModel> getBatchStudentAttendanceList(int batchId,
			String dateKeyword,
			JdbcTemplate jdbcTemplate) {

		ArrayList<StudentAttendanceModel> list = new ArrayList<StudentAttendanceModel>();

		String sql = "select "+"batchStudent.batch_student_id, "
				+ "batchStudent.batch_id, "
				+ "batchStudent.student_id, "

				+ "student.reg_no, "
				+ "student.first_name, "
				+ "student.last_name, "
				+ "student.image, "

				+ "attendance.attandance_id, "
				+ "attendance.attendance_for_date, "
				+ "attendance.attendance"


				+" from " + DatabaseTables.TABLE_NAME_BATCH_STUDENT+ " batchStudent"

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_STUDENT + " student ON "
				+" batchStudent.student_id="+"student.student_id"

				+ " LEFT JOIN "+ DatabaseTables.TABLE_NAME_ATTENDANCE + " attendance ON "
				+" batchStudent.batch_student_id="+"attendance.batch_student_id "+ " && attendance.attendance_for_date LIKE '"+dateKeyword+"%'";


		String whereClause = " where batchStudent.batch_id =?";

		sql = sql + whereClause;

		try {
			RowMapper<StudentAttendanceModel> rowMapper = new RowMapper<StudentAttendanceModel>() {
				@Override
				public StudentAttendanceModel mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					StudentAttendanceModel mi = new StudentAttendanceModel();
					mi.setBatchStudentId(rs.getInt(1));
					mi.setBatchId(rs.getInt(2));
					mi.setStudentId(rs.getInt(3));

					mi.setRegNo(rs.getString(4));
					mi.setFirstName(rs.getString(5));
					mi.setLastName(rs.getString(6));
					mi.setImage(rs.getString(7));

					mi.setAttendanceId(rs.getInt(8));
					mi.setAttendanceForDate(rs.getString(9));
					mi.setAttendanceStatus(rs.getInt(10));

					return mi;
				}
			};
			list = (ArrayList<StudentAttendanceModel>) jdbcTemplate.query(sql, rowMapper, batchId);

		} catch (Exception e) {
			DebugLog.print("AttendanceHelper::getBatchStudentAttendanceList::Exception: " + e, true);
		}
		return list;
	}

	/*
	 * Get Overall attendance
	 */

	public OverallAttendanceModel getOverallAttendance(int studentId,
			int batchStudentId,
			String startDate,
			String endDate, JdbcTemplate jdbcTemplate) {

		OverallAttendanceModel pi = new OverallAttendanceModel();


		String sql = "select "+"attandance_id, "
				+ "attendance_for_date, "
				+ "attendance"

				+" from " + DatabaseTables.TABLE_NAME_ATTENDANCE;

		String whereClause = " where batch_student_id =?" + " && attendance_for_date BETWEEN "+"'"+startDate+"'"+ " AND " +"'"+endDate+"'";
		String orderClause = " ORDER BY created_date DESC";

		sql = sql + whereClause+orderClause;

		try {




			RowMapper<AttendanceModel> rowMapper = new RowMapper<AttendanceModel>() {
				@Override
				public AttendanceModel mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					AttendanceModel mi = new AttendanceModel();
					mi.setId(rs.getInt(1));
					mi.setStudentId(studentId);//(rs.getInt(2));
					mi.setAttendanceForDate(rs.getString(2));
					mi.setAttendance(rs.getInt(3));

					return mi;
				}
			};
			ArrayList<AttendanceModel> list = (ArrayList<AttendanceModel>) jdbcTemplate.query(sql, rowMapper, batchStudentId);

			int totalCount = 0,
					presentCount = 0,
					absentCount = 0,
					leaveCount = 0;


			for(int i = 0; i < list.size();i++) {
				totalCount++;
				AttendanceModel mi = list.get(i);

				if(mi.getAttendance() == AttendanceStatus.ATTENDANCE_STATUS_PRESENT) {
					presentCount++;
				}else if(mi.getAttendance() == AttendanceStatus.ATTENDANCE_STATUS_ABSENT) {
					absentCount++;
				}else if(mi.getAttendance() == AttendanceStatus.ATTENDANCE_STATUS_LEAVE) {
					leaveCount++;
				}
			}
			pi.setTotalAbsentDays(absentCount);
			pi.setTotalLeaveDays(leaveCount);
			pi.setTotalPresentDays(presentCount);
			pi.setTotalWorkingDays(totalCount);

		} catch (Exception e) {
			DebugLog.print("AttendanceHelper::getAttendanceList::Exception: " + e, true);
		}
		return pi;
	}


	/*
	 * Get Attendance list
	 */

	public ArrayList<AttendanceModel> getAttendanceList(int studentId, String dateKeyword, JdbcTemplate jdbcTemplate) {

		ArrayList<AttendanceModel> list = new ArrayList<AttendanceModel>();


		BatchStudentModel batchStudentModel = getBatchStudent(studentId, jdbcTemplate);
		if(batchStudentModel == null || batchStudentModel.getBatchStudentId() <=0) {
			return list;
		}

		String sql = "select "+"attandance_id, "
				+ "attendance_for_date, "
				+ "attendance, "
				+ "created_by, "
				+ "updated_by"

				+" from " + DatabaseTables.TABLE_NAME_ATTENDANCE;

		String whereClause = " where batch_student_id = ?" + " && attendance_for_date LIKE '"+dateKeyword+"%'";
		String orderClause = " ORDER BY created_date DESC";

		sql = sql + whereClause+orderClause;

		try {


			RowMapper<AttendanceModel> rowMapper = new RowMapper<AttendanceModel>() {
				@Override
				public AttendanceModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					AttendanceModel mi = new AttendanceModel();
					mi.setId(rs.getInt(1));
					mi.setStudentId(studentId);//(rs.getInt(2));
					mi.setAttendanceForDate(rs.getString(2));
					mi.setAttendance(rs.getInt(3));
					mi.setCreatedBy(rs.getInt(4));
					mi.setUpdatedBy(rs.getInt(5));


					return mi;
				}
			};
			list = (ArrayList<AttendanceModel>) jdbcTemplate.query(sql, rowMapper, batchStudentModel.getBatchStudentId());

		} catch (Exception e) {
			DebugLog.print("AttendanceHelper::getAttendanceList::Exception: " + e, true);
		}
		return list;
	}


	/*
	 * Get batch student detail
	 */

	public BatchStudentModel getBatchStudent(int studentId, JdbcTemplate jdbcTemplate) {

		BatchStudentModel mi = null;


		String sql = "select "+"batch_student_id, "
				+ "batch_id"

				+" from " + DatabaseTables.TABLE_NAME_BATCH_STUDENT;

		String whereClause = " where student_id = ?";// + " && is_active=1";
		String orderClause = " LIMIT 1";

		sql = sql + whereClause+orderClause;

		try {

			RowMapper<BatchStudentModel> rowMapper = new RowMapper<BatchStudentModel>() {
				@Override
				public BatchStudentModel mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					BatchStudentModel mi = new BatchStudentModel();
					mi.setBatchStudentId(rs.getInt(1));
					mi.setBatchId(rs.getInt(2));
					mi.setStudentId(studentId);


					return mi;
				}
			};
			mi = jdbcTemplate.queryForObject(sql, rowMapper, studentId);

		} catch (Exception e) {
			DebugLog.print("AttendanceHelper::getBatchStudent::Exception: " + e, true);
		}
		return mi;
	}

	/**
	 * Create attendance
	 *
	 * @param mi
	 * @return
	 */

	public int createAttendance(
			AttendanceModel pi, int teacherId, JdbcTemplate jdbcTemplate) {

		int result = 0;
		BatchStudentModel batchStudentModel = getBatchStudent(pi.getStudentId(), jdbcTemplate);
		if(batchStudentModel == null || batchStudentModel.getBatchStudentId() <=0) {
			return result;
		}

		try {
			String updateAt = Utils.getUpdatedAtStamp();
			// the mysql insert statement
			String query = "insert into " + DatabaseTables.TABLE_NAME_ATTENDANCE
					+ " (batch_student_id, teacherId, attendance_for_date, attendance, created_by, updated_by, updated_date)"
					+ " values (?, ?, ?, ?, ?, ?, ?)";


			result = jdbcTemplate.update(query,
			        new Object[] {
			        		batchStudentModel.getBatchStudentId(),
			        		teacherId,
			        		pi.getAttendanceForDate(),
			        		pi.getAttendance(),
			        		pi.getCreatedBy(),
			        		pi.getUpdatedBy(),
			        		updateAt});

		} catch (Exception e) {
			DebugLog.print("AttendanceHelper::createAttendance::Exception: " + e, true);
		}

		return result;
	}


	/**
	 * Create attendance
	 *
	 * @param mi
	 * @return
	 */

	public int createClassBatchAttendance(
			StudentAttendanceModel pi,
			int markBy,int teacherId,
			boolean isOpenDb,
			JdbcTemplate jdbcTemplate) {


		int result = 0;
		if(pi.getAttendanceId() == 0) {

			try {
				String updateAt = Utils.getUpdatedAtStamp();

				// the mysql insert statement
				String query = "insert into " + DatabaseTables.TABLE_NAME_ATTENDANCE
						+ " (batch_student_id, attendance_for_date, attendance, created_by, updated_by, updated_date, teacherId)"
						+ " values (?, ?, ?, ?, ?, ?, ?)";

				result = jdbcTemplate.update(query,
				        new Object[] {
				        		pi.getBatchStudentId(),
				        		pi.getAttendanceForDate(),
				        		pi.getAttendanceStatus(),
				        		markBy,
				        		markBy,
				        		updateAt,
				        		teacherId});

			} catch (Exception e) {
				DebugLog.print("AttendanceHelper::createAttendance::Exception: " + e, true);
			}
		}else { //

			try {
				// the mysql update statement
				String updatedAt = Utils.getUpdatedAtStamp();

				/**
				 * , , , , , , created_by, created_date, ,
				 */
				String query = "update " + DatabaseTables.TABLE_NAME_ATTENDANCE
						+ " set attendance = ?"
						+ ", updated_by = ?"
						+ ", teacherId = ?"

						+ ", updated_date = ?"
						;

				String whereClause = " where attandance_id = ?";

				query = query+whereClause;

				jdbcTemplate.update(query,
		        new Object[] {
		        		pi.getAttendanceStatus(),
		        		markBy,
		        		teacherId,
		        		updatedAt,
		        		pi.getAttendanceId()
		        		});
				result = 1;

			} catch (Exception e) {
				DebugLog.print("AttendanceHelper::createClassBatchAttendance::Exception: " + e, true);
			}finally {
				DbUtils.closeQuery(null, null, null);
			}
		}

		return result;
	}

}


