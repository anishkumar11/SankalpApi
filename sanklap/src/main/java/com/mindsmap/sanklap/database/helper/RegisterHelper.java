package com.mindsmap.sanklap.database.helper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.models.StudentModel;

public class RegisterHelper {


	public RegisterHelper() {
	}




	/**
	 * Create student
	 *
	 * @param mi
	 * @return
	 */

	public int createStudent(
			StudentModel pi, JdbcTemplate jdbcTemplate) {

		ArrayList<StudentModel> list = getStudentList(pi, jdbcTemplate);
		if(!list.isEmpty()) {
			boolean result = updateStudent(list.get(0), jdbcTemplate);
			if(result) {
				return 1;
			}
			return 0;
		}

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

			    			"",
			    			"",
			    			1,
			    			pi.getDob(),
			    			"",
			    			pi.getDateOfJoining(),
			    			pi.getDateOfLeaving(),
			    			"",
			    			"",
			    			"",
			    			"",
			    			"",
			    			"",
			    			"",
			    			"",
			    			"",
			    			1,
			    			1,
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

	public boolean updateStudent(StudentModel pi, JdbcTemplate jdbcTemplate) {

		if (pi == null) {
			return false;
		}


		boolean result = false;

		try {
			// the mysql update statement

			String updatedAt = Utils.getUpdatedAtStamp();
			String password = "";

			String query = "update " + DatabaseTables.TABLE_NAME_STUDENT
					+ " set branch_id = ?"
					+ ", is_male = ?"
					+ ", updated_by = ?"
					+ ", created_by = ?"
					+ ", is_active = ?"
					+ ", is_registered = ?"

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

			String whereClause = " where student_id = ?";

			query = query+whereClause;

			jdbcTemplate.update(query,
	        new Object[] {
	        		pi.getBranchId(),
					pi.getIsMale(),
					1,
					1,
					pi.getIsActive(),
					1,
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
					password,
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
	 * Get student list list
	 */

	public ArrayList<StudentModel> getStudentList(StudentModel pi, JdbcTemplate jdbcTemplate) {

		ArrayList<StudentModel> list = new ArrayList<StudentModel>();

		String sql = "select "+"student_id"

				+" from " + DatabaseTables.TABLE_NAME_STUDENT;

		String whereClause = " WHERE reg_no= ?";
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



}

