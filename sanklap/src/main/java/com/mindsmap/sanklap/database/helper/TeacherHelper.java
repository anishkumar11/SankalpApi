package com.mindsmap.sanklap.database.helper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.models.TeacherModel;

public class TeacherHelper {

	public TeacherHelper() {
	}


	/*
	 * Get Teacher list
	 */

	public ArrayList<TeacherModel> getTeacherList(int branchId, String searhKeyword, JdbcTemplate jdbcTemplate){

		ArrayList<TeacherModel> list = new ArrayList<TeacherModel>();

		String sql = "select "+"teacher.teacher_id, "
				+ "teacher.reg_no, "
				+ "teacher.first_name, "
				+ "teacher.last_name, "
				+ "teacher.image, "
				+ "teacher.mobile_no, "
				+ "teacher.alt_mobile_no, "
				+ "teacher.email_id, "

				+ "teacher.dob, "
				+ "teacher.mother_tongue, "
				+ "teacher.is_male, "
				+ "teacher.nationality, "
				+ "teacher.blood_group, "
				+ "teacher.qualification, "
				+ "teacher.date_of_joining, "
				+ "teacher.date_of_leaving, "
				+ "teacher.address, "
				+ "teacher.landmark, "
				+ "teacher.city, "
				+ "teacher.state, "
				+ "teacher.country, "
				+ "teacher.pincode, "
				+ "teacher.remark, "
				+ "teacher.is_active, "
				+ "teacher.created_by, "
				+ "teacher.updated_by, "

				+ "branch.branch_id, "
				+ "branch.branch_name"


				+" from " + DatabaseTables.TABLE_NAME_TEACHERS+ " teacher"
				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_BRANCH + " branch ON "
				+ "teacher.Branch_id="+"branch.branch_id";

		String whereClause = "";
		if(branchId >= 0) {
			whereClause = " where teacher.Branch_id = "+branchId;
		}else if(!Utils.isEmpty(searhKeyword)) {
			whereClause = " where "
					+"LOWER(teacher.mobile_no) like '%"+searhKeyword+"%'"
					+" OR LOWER(teacher.alt_mobile_no) like '%"+searhKeyword+"%'"
					+" OR LOWER(teacher.reg_no) like '%"+searhKeyword+"%'"
					+" OR LOWER(teacher.first_name) like '%"+searhKeyword+"%'"
					+" OR LOWER(teacher.last_name) like '%"+searhKeyword+"%'"
					+" OR LOWER(teacher.email_id) like '%"+searhKeyword+"%'";
		}

		sql = sql + whereClause;

		try {


			RowMapper<TeacherModel> rowMapper = new RowMapper<TeacherModel>() {
				@Override
				public TeacherModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					TeacherModel mi = new TeacherModel();
					mi.setId(rs.getInt(1));
					mi.setRegNo(rs.getString(2));
					mi.setFirstName(rs.getString(3));
					mi.setLastName(rs.getString(4));
					mi.setImage(rs.getString(5));
					mi.setMobileNo(rs.getString(6));
					mi.setAltMobileNo(rs.getString(7));
					mi.setEmailId(rs.getString(8));


					mi.setDob(rs.getString(9));
					mi.setMotherTongue(rs.getString(10));
					mi.setIsMale(rs.getInt(11));
					mi.setNationality(rs.getString(12));
					mi.setBloodGroup(rs.getString(13));
					mi.setQualification(rs.getString(14));
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
					mi.setCreatedBy(rs.getInt(25));
					mi.setUpdatedBy(rs.getInt(26));

					mi.setBranchId(rs.getInt(27));
					mi.setBranchName(rs.getString(28));


					return mi;
				}
			};
			list = (ArrayList<TeacherModel>) jdbcTemplate.query(sql, rowMapper);

		} catch (Exception e) {
			DebugLog.print("TeacherHelper::getTeacherList::Exception: " + e, true);
		}
		return list;
	}


	/**
	 * Create Teacher
	 *
	 * @param mi
	 * @return
	 */

	public int createTeacher(
			TeacherModel pi, JdbcTemplate jdbcTemplate) {


		int result = 0;

		try {

			String updatedAt = Utils.getUpdatedAtStamp();
			// the mysql insert statement
			String query = "insert into " + DatabaseTables.TABLE_NAME_TEACHERS
					+ " (reg_no, first_name, last_name, dob, mother_tongue, is_male, "
					+ "nationality, blood_group, qualification, date_of_joining, date_of_leaving,"
					+ "address, landmark, city, state, country, pincode, email_id, mobile_no, alt_mobile_no, remark, is_active,"
					+ "Branch_id, created_by, created_date, updated_date, updated_by)"
					+ " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";


			result = jdbcTemplate.update(query,
			        new Object[] {
			    			pi.getRegNo(),
			    			pi.getFirstName(),
			    			pi.getLastName(),
			    			pi.getDob(),
			    			pi.getMotherTongue(),
			    			pi.getIsMale(),
			    			pi.getNationality(),
			    			pi.getBloodGroup(),
			    			pi.getQualification(),
			    			pi.getDateOfJoining(),
			    			pi.getDateOfLeaving(),
			    			pi.getAddress(),
			    			pi.getLandmark(),
			    			pi.getCity(),
			    			pi.getState(),
			    			pi.getCountry(),
			    			pi.getPincode(),
			    			pi.getEmailId(),
			    			pi.getMobileNo(),
			    			pi.getAltMobileNo(),
			    			pi.getRemarks(),
			    			pi.getIsActive(),
			    			pi.getBranchId(),
			    			pi.getCreatedBy(),
			    			updatedAt,
			    			updatedAt,
			    			pi.getCreatedBy()
			        		});

		} catch (Exception e) {
			DebugLog.print("FeeHelper::createTeacher::Exception: " + e, true);
		}

		return result;
	}

	/**
	 * update Teacher
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateTeacher(TeacherModel pi, JdbcTemplate jdbcTemplate) {

		if (pi == null) {
			return false;
		}


		boolean result = false;

		try {
			// the mysql update statement

			String updatedAt = Utils.getUpdatedAtStamp();

			String query = "update " + DatabaseTables.TABLE_NAME_TEACHERS
					+ " set Branch_id = " + pi.getBranchId()
					+ ", is_male = " + pi.getIsMale()
					+ ", updated_by = " + pi.getUpdatedBy()
					+ ", is_active = " + pi.getIsActive()

					+ ", updated_date = '" + updatedAt
					+ "', reg_no = '" + pi.getRegNo()
					+ "', first_name = '" + pi.getFirstName()
					+ "', last_name = '" + pi.getLastName()
					+ "', dob = '" +pi.getDob()
					+ "', mother_tongue = '"+pi.getMotherTongue()
					+ "', nationality = '"+pi.getNationality()
					+ "', blood_group = '"+pi.getBloodGroup()
					+ "', qualification = '"+pi.getQualification()
					+ "', date_of_joining = '"+pi.getDateOfJoining()
					+ "', date_of_leaving = '"+pi.getDateOfLeaving()
					+ "', address = '"+pi.getAddress()

					+ "', landmark = '"+pi.getLandmark()
					+ "', city = '"+pi.getCity()
					+ "', state = '"+pi.getState()
					+ "', country = '"+pi.getCountry()
					+ "', pincode = '"+pi.getPincode()
					+ "', email_id = '"+pi.getEmailId()

					+ "', mobile_no = '"+pi.getMobileNo()
					+ "', alt_mobile_no = '"+pi.getAltMobileNo()
					+ "', remark = '"+pi.getRemarks()+"'"
					;

			String whereClause = " where teacher_id = " + pi.getId();

			query = query+whereClause;

			jdbcTemplate.update(query,
			        new Object[] {
							pi.getBranchId(),
							pi.getIsMale(),
							pi.getUpdatedBy(),
							pi.getIsActive(),

							updatedAt,
							pi.getRegNo(),
							pi.getFirstName(),
							pi.getLastName(),
							pi.getDob(),
							pi.getMotherTongue(),
							pi.getNationality(),
							pi.getBloodGroup(),
							pi.getQualification(),
							pi.getDateOfJoining(),
							pi.getDateOfLeaving(),
							pi.getAddress(),

							pi.getLandmark(),
							pi.getCity(),
							pi.getState(),
							pi.getCountry(),
							pi.getPincode(),
							pi.getEmailId(),

							pi.getMobileNo(),
							pi.getAltMobileNo(),
							pi.getRemarks(),
							pi.getId()
			        		});

			result = true;

		} catch (Exception e) {
			DebugLog.print("FeeHelper::updateTeacher::Exception: " + e, true);
		}

		return result;
	}

	/**
	 * update Teacher active status
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateTeacherActiveStatus(int teacherId, int isActive, JdbcTemplate jdbcTemplate) {

		if (teacherId <= 0) {
			return false;
		}

		boolean result = false;

		try {
			// the mysql update statement

			String query = "update " + DatabaseTables.TABLE_NAME_TEACHERS
					+ " set is_active = ?" ;

			String whereClause = " where teacher_id = ?";

			query = query+whereClause;

			jdbcTemplate.update(query,
			        new Object[] {
			        		isActive,
			        		teacherId
			        		});
			result = true;

		} catch (Exception e) {
			DebugLog.print("FeeHelper::updateTeacherActiveStatus::Exception: " + e, true);
		}

		return result;
	}
}




