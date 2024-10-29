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
import com.mindsmap.sanklap.models.StudentModel;

public class StudentHelper {

	public StudentHelper() {
	}

	/*
	 * Do Student login
	 */

	public ArrayList<StudentModel> doStudentLogin(String userName, JdbcTemplate jdbcTemplate) {

		ArrayList<StudentModel> list = new ArrayList<StudentModel>();

		String sql = "select "+"student.student_id, "
				+ "student.reg_no, "
				+ "student.first_name, "
				+ "student.last_name, "
				+ "student.image, "
				+ "student.mobile_no, "
				+ "student.alt_mobile_no, "
				+ "student.email_id, "
				+ "student.stu_email_id, "
				+ "student.dob, "
				+ "student.mother_tongue, "
				+ "student.is_male, "
				+ "student.nationality, "
				+ "student.blood_group, "
				+ "student.date_of_joining, "
				+ "student.date_of_leaving, "
				+ "student.address, "
				+ "student.landmark, "
				+ "student.city, "
				+ "student.state, "
				+ "student.country, "
				+ "student.pincode, "
				+ "student.remark, "
				+ "student.is_active, "
				+ "student.father_name, "
				+ "student.mother_name, "

				+ "branch.branch_id, "
				+ "branch.branch_name"

				+" from " + DatabaseTables.TABLE_NAME_STUDENT+ " student"

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_BRANCH + " branch ON "
				+ "student.branch_id="+"branch.branch_id";

		String whereClause = " where "
				+"LOWER(student.mobile_no) = '"+userName+"'"
				+" OR LOWER(student.alt_mobile_no) = '"+userName+"'"
				+" OR LOWER(student.email_id) = '"+userName+"'"
				+" OR LOWER(student.stu_email_id) = '"+userName+"'";


		sql = sql + whereClause;


		try {



			RowMapper<StudentModel> rowMapper = new RowMapper<StudentModel>() {
				@Override
				public StudentModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					StudentModel mi = new StudentModel();
					mi = new StudentModel();
					mi.setId(rs.getInt(1));
					mi.setRegNo(rs.getString(2));
					mi.setFirstName(rs.getString(3));
					mi.setLastName(rs.getString(4));
					mi.setImage(rs.getString(5));
					mi.setMobileNo(rs.getString(6));
					mi.setAltMobileNo(rs.getString(7));
					mi.setEmailId(rs.getString(8));
					mi.setStuEmailId(rs.getString(9));

					mi.setDob(rs.getString(10));
					mi.setMotherTongue(rs.getString(11));
					mi.setIsMale(rs.getInt(12));
					mi.setNationality(rs.getString(13));
					mi.setBloodGroup(rs.getString(14));
					mi.setDateOfJoining(rs.getString(15));
					mi.setDateOfLeaving(rs.getString(16));
					mi.setAddress(rs.getString(17));
					mi.setLandmark(rs.getString(18));
					mi.setCity(rs.getString(19));
					mi.setState(rs.getString(20));
					mi.setCountry(rs.getString(21));
					mi.setPincode(rs.getString(22));
					mi.setRemarks(rs.getString(23));
					mi.setIsActive(rs.getInt(24));
					mi.setFatherName(rs.getString(25));
					mi.setMotherName(rs.getString(26));

					mi.setBranchId(rs.getInt(27));
					mi.setBranchName(rs.getString(28));

					int batchId = BatchStudentHelper.getBatchId(mi.getId(), jdbcTemplate);

					BatchModel batchModel = null;
					if(batchId > 0) {
						batchModel = new BatchHelper().getBatchDetail(batchId, jdbcTemplate);
					}
					mi.setBatchId(batchId);
					mi.setBatchModel(batchModel);


					return mi;
				}
			};
			list = (ArrayList<StudentModel>) jdbcTemplate.query(sql, rowMapper);

		} catch (Exception e) {
			DebugLog.print("StudentHelper::doStudentLogin::Exception: " + e, true);
		}
		return list;
	}


	/*
	 * Get Student list
	 */

	public ArrayList<StudentModel> getStudentList(int branchId, String searhKeyword, int page, JdbcTemplate jdbcTemplate) {

		int maxRowCount = 20;
		int startOffset = (page-1)*maxRowCount;


		ArrayList<StudentModel> list = new ArrayList<StudentModel>();

		String sql = "select "+"student.student_id, "
				+ "student.reg_no, "
				+ "student.first_name, "
				+ "student.last_name, "
				+ "student.image, "
				+ "student.mobile_no, "
				+ "student.alt_mobile_no, "
				+ "student.email_id, "
				+ "student.stu_email_id, "
				+ "student.dob, "
				+ "student.mother_tongue, "
				+ "student.is_male, "
				+ "student.nationality, "
				+ "student.blood_group, "
				+ "student.date_of_joining, "
				+ "student.date_of_leaving, "
				+ "student.address, "
				+ "student.landmark, "
				+ "student.city, "
				+ "student.state, "
				+ "student.country, "
				+ "student.pincode, "
				+ "student.remark, "
				+ "student.is_active, "
				+ "student.father_name, "
				+ "student.mother_name, "

				+ "branch.branch_id, "
				+ "branch.branch_name"

				+" from " + DatabaseTables.TABLE_NAME_STUDENT+ " student"

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_BRANCH + " branch ON "
				+ "student.branch_id="+"branch.branch_id";

		String whereClause = "";
		if(branchId >= 0) {
			whereClause = " where student.branch_id = "+branchId;
		}else if(!Utils.isEmpty(searhKeyword)) {
			whereClause = " where "
					+"LOWER(student.mobile_no) like '%"+searhKeyword+"%'"
					+" OR LOWER(student.alt_mobile_no) like '%"+searhKeyword+"%'"
					+" OR LOWER(student.reg_no) like '%"+searhKeyword+"%'"
					+" OR LOWER(student.first_name) like '%"+searhKeyword+"%'"
					+" OR LOWER(student.last_name) like '%"+searhKeyword+"%'"
					+" OR LOWER(student.father_name) like '%"+searhKeyword+"%'"
					+" OR LOWER(student.mother_name) like '%"+searhKeyword+"%'"
					+" OR LOWER(student.email_id) like '%"+searhKeyword+"%'"
					+" OR LOWER(student.stu_email_id) like '%"+searhKeyword+"%'";
		}

		String orderClause = "";
		String pagination = " limit "+startOffset+","+ maxRowCount;

		sql = sql + whereClause+orderClause+pagination;


		try {



			RowMapper<StudentModel> rowMapper = new RowMapper<StudentModel>() {
				@Override
				public StudentModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					StudentModel mi = new StudentModel();
					mi.setId(rs.getInt(1));
					mi.setRegNo(rs.getString(2));
					mi.setFirstName(rs.getString(3));
					mi.setLastName(rs.getString(4));
					mi.setImage(rs.getString(5));
					mi.setMobileNo(rs.getString(6));
					mi.setAltMobileNo(rs.getString(7));
					mi.setEmailId(rs.getString(8));
					mi.setStuEmailId(rs.getString(9));

					mi.setDob(rs.getString(10));
					mi.setMotherTongue(rs.getString(11));
					mi.setIsMale(rs.getInt(12));
					mi.setNationality(rs.getString(13));
					mi.setBloodGroup(rs.getString(14));
					mi.setDateOfJoining(rs.getString(15));
					mi.setDateOfLeaving(rs.getString(16));
					mi.setAddress(rs.getString(17));
					mi.setLandmark(rs.getString(18));
					mi.setCity(rs.getString(19));
					mi.setState(rs.getString(20));
					mi.setCountry(rs.getString(21));
					mi.setPincode(rs.getString(22));
					mi.setRemarks(rs.getString(23));
					mi.setIsActive(rs.getInt(24));
					mi.setFatherName(rs.getString(25));
					mi.setMotherName(rs.getString(26));

					mi.setBranchId(rs.getInt(27));
					mi.setBranchName(rs.getString(28));


					return mi;
				}
			};
			list = (ArrayList<StudentModel>) jdbcTemplate.query(sql, rowMapper);

		} catch (Exception e) {
			DebugLog.print("StudentHelper::getStudentList::Exception: " + e, true);
		}
		return list;
	}


	/**
	 * Create student
	 *
	 * @param mi
	 * @return
	 */

	public int createStudent(
			StudentModel pi, int createdBy, JdbcTemplate jdbcTemplate) {


		int result = 0;

		try {
			/**
			 *
			 */
			// the mysql insert statement
			String query = "insert into " + DatabaseTables.TABLE_NAME_STUDENT
					+ " (reg_no, "
					+ "first_name, last_name, father_name, mother_name, mother_tongue, is_male, blood_group,"
					+ " mobile_no, alt_mobile_no, is_active, branch_id,"
					+ " image, password, is_registered, dob, nationality, date_of_joining, date_of_leaving, address, landmark,"
					+ " city, state, country, pincode, stu_email_id, email_id, remark, created_by, updated_by, updated_date)"
					+ " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?,?,?,?,?,?,?,?,?,?,?,?)";


			result = jdbcTemplate.update(query,
			        new Object[] {
			    			pi.getRegNo(),
			    			pi.getFirstName(),
			    			pi.getLastName(),
			    			pi.getFatherName(),
			    			pi.getMotherName(),

			    			pi.getMotherTongue(),
			    			pi.getIsMale(),
			    			pi.getBloodGroup(),
			    			pi.getMobileNo(),
			    			pi.getAltMobileNo(),
			    			pi.getIsActive(),
			    			pi.getBranchId(),

			    			pi.getImage(),
			    			"",
			    			1,
			    			pi.getDob(),
			    			pi.getNationality(),
			    			pi.getDateOfJoining(),
			    			pi.getDateOfLeaving(),
			    			pi.getAddress(),
			    			pi.getLandmark(),
			    			pi.getCity(),
			    			pi.getState(),
			    			pi.getCountry(),
			    			pi.getPincode(),
			    			pi.getStuEmailId(),
			    			pi.getEmailId(),
			    			pi.getRemarks(),
			    			createdBy,
			    			createdBy,
			    			Utils.getUpdatedAtStamp()

			        		});

		} catch (Exception e) {
			DebugLog.print("TicketsHelper::createStudent::Exception: " + e, true);
		}

		return result;
	}

	/**
	 * update Student
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateStudent(StudentModel pi, int updatedBy, JdbcTemplate jdbcTemplate) {

		if (pi == null) {
			return false;
		}


		boolean result = false;

		try {
			// the mysql update statement

			String updatedAt = Utils.getUpdatedAtStamp();

			String query = "update " + DatabaseTables.TABLE_NAME_STUDENT
					+ " set branch_id = ?"
					+ ", is_male = ?"
					+ ", updated_by = ?"
					+ ", is_active = ?"

					+ ", updated_date = ?"
					+ ", reg_no = ?"
					+ ", first_name = ?"
					+ ", last_name = ?"
					+ ", father_name = ?"
					+ ", mother_name = ?"
					+ ", mother_tongue = ?"
					+ ", blood_group = ?"
					+ ", mobile_no = ?"
					+ ", alt_mobile_no = ?"


					+ ", image = ?"
					+ ", password = ?"
					+ ", dob = ?"

					+ ", nationality = ?"
					+ ", date_of_joining = ?"
					+ ", date_of_leaving = ?"

					+ ", address = ?"
					+ ", landmark = ?"
					+ ", city = ?"
					+ ", state = ?"
					+ ", country = ?"
					+ ", pincode = ?"

					+ ", stu_email_id = ?"
					+ ", email_id = ?"
					+ ", remark = ?"
					;

			String whereClause = " where student_id = ?" + pi.getId();

			query = query+whereClause;

			jdbcTemplate.update(query,
			        new Object[] {
							pi.getBranchId(),
							pi.getIsMale(),
							updatedBy,
							pi.getIsActive(),

							updatedAt,
							pi.getRegNo(),
							pi.getFirstName(),
							pi.getLastName(),
							pi.getFatherName(),
							pi.getMotherName(),
							pi.getMotherTongue(),
							pi.getBloodGroup(),
							pi.getMobileNo(),
							pi.getAltMobileNo(),


							pi.getImage(),
							pi.getLastName(),
							pi.getDob(),

							pi.getNationality(),
							pi.getDateOfJoining(),
							pi.getDateOfLeaving(),

							pi.getAddress(),
							pi.getLandmark(),
							pi.getCity(),
							pi.getState(),
							pi.getCountry(),
							pi.getPincode(),

							pi.getStuEmailId(),
							pi.getEmailId(),
							pi.getRemarks(),
							pi.getId()
			        		});
			result = true;

		} catch (Exception e) {
			DebugLog.print("FeeHelper::updateStudent::Exception: " + e, true);
		}

		return result;
	}

	/*
	 * Get topic list
	 */

	public ArrayList<StudentModel> getStudentList(StudentModel pi, JdbcTemplate jdbcTemplate) {

		ArrayList<StudentModel> list = new ArrayList<StudentModel>();

		String sql = "select "+"student_id"

				+" from " + DatabaseTables.TABLE_NAME_STUDENT;

		String whereClause = " WHERE reg_no=?";
		String orderClause = "";

		sql = sql + whereClause+orderClause;

		try {

			RowMapper<StudentModel> rowMapper = new RowMapper<StudentModel>() {
				@Override
				public StudentModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					StudentModel mi = new StudentModel();
					mi.setId(rs.getInt(1));

					return mi;
				}
			};
			list = (ArrayList<StudentModel>) jdbcTemplate.query(sql, rowMapper, pi.getRegNo());


		} catch (Exception e) {
			DebugLog.print("SyllabusHelper::getStudentList::Exception: " + e, true);
		}
		return list;
	}

	/**
	 * update Student active status
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateStudentActiveStatus(int studentId, int isActive, JdbcTemplate jdbcTemplate) {

		if (studentId <= 0) {
			return false;
		}

		boolean result = false;

		try {
			// the mysql update statement

			String query = "update " + DatabaseTables.TABLE_NAME_STUDENT
					+ " set is_active = ?";

			String whereClause = " where student_id = ?";

			query = query+whereClause;

			jdbcTemplate.update(query,
			        new Object[] {
			        		isActive,
			        		studentId
			        		});
			result = true;

		} catch (Exception e) {
			DebugLog.print("FeeHelper::updateTeacherActiveStatus::Exception: " + e, true);
		}

		return result;
	}
}




