package com.mindsmap.sanklap.database.helper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.database.DatabaseConfig;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.database.DbUtils;
import com.mindsmap.sanklap.models.StandardModel;
import com.mindsmap.sanklap.models.StudentModel;
import com.mindsmap.sanklap.models.BatchStudentModel;
import com.mindsmap.sanklap.models.StandardModel;
import com.mindsmap.sanklap.models.StudentModel;

public class StandardHelper {

	public StandardHelper() {
	}


	/*
	 * Get Standard
	 */

	public StandardModel getStandard(String standardName, JdbcTemplate jdbcTemplate) {

		StandardModel mi = null;

		String sql = "select "+"standard_id, "
				+ "standard_name"

				+" from " + DatabaseTables.TABLE_NAME_STANDARD;

		String whereClause = " where standard_name= ?";

		sql = sql + whereClause;

		try {

			RowMapper<StandardModel> rowMapper = new RowMapper<StandardModel>() {
				@Override
				public StandardModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					StandardModel mi = new StandardModel();
					mi.setId(rs.getInt(1));;
					mi.setName(rs.getString(2));;


					return mi;
				}
			};
			mi = jdbcTemplate.queryForObject(sql, rowMapper, standardName);


		} catch (Exception e) {
			DebugLog.print("StandardHelper::getTopicList::Exception: " + e, true);
		}
		return mi;
	}

	/*
	 * Get Branch Standard list
	 */

	public ArrayList<StandardModel> getStandardList(int branchId, JdbcTemplate jdbcTemplate) {

		ArrayList<StandardModel> list = new ArrayList<StandardModel>();

		String sql = "select "
				+"branchStardard.standardId, "
				+ "standard.standard_name"

				+" from " + DatabaseTables.TABLE_NAME_BRANCH_STANDARD+" branchStardard"
				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_STANDARD + " standard ON "
				+"branchStardard.standardId="+"standard.standard_id";


		String whereClause = " where branchStardard.branchId= ?" + " && branchStardard.isActive= 1";
		String orderClause = "";

		sql = sql + whereClause+orderClause;

		try {


			RowMapper<StandardModel> rowMapper = new RowMapper<StandardModel>() {
				@Override
				public StandardModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					StandardModel mi = new StandardModel();
					mi.setId(rs.getInt(1));
					mi.setName(rs.getString(2));
					return mi;
				}
			};
			list = (ArrayList<StandardModel>) jdbcTemplate.query(sql, rowMapper, branchId);

		} catch (Exception e) {
			DebugLog.print("StandardHelper::getStandardList::Exception: " + e, true);
		}
		return list;
	}

	/*
	 * Get Standard list
	 */

	public ArrayList<StandardModel> getStandardList(JdbcTemplate jdbcTemplate) {

		ArrayList<StandardModel> list = new ArrayList<StandardModel>();

		String sql = "select "+"standard_id, "
				+ "standard_name"

				+" from " + DatabaseTables.TABLE_NAME_STANDARD;

		String whereClause = " where is_active= ?";

		sql = sql + whereClause;

		try {

			RowMapper<StandardModel> rowMapper = new RowMapper<StandardModel>() {
				@Override
				public StandardModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					StandardModel mi = new StandardModel();
					mi.setId(rs.getInt(1));;
					mi.setName(rs.getString(2));
					return mi;
				}
			};
			list = (ArrayList<StandardModel>) jdbcTemplate.query(sql, rowMapper, 1);

		} catch (Exception e) {
			DebugLog.print("StandardHelper::getTopicList::Exception: " + e, true);
		}
		return list;
	}

	/*
	 * Get Student list
	 */

	public ArrayList<StudentModel> getStudentList(int standardId, JdbcTemplate jdbcTemplate) {

		ArrayList<StudentModel> list = new ArrayList<StudentModel>();

		String sql = "select "
				+"studentStardard.standard_id, "

				+ "student.student_id, "
				+ "student.reg_no, "
				+ "student.first_name, "
				+ "student.last_name"

				+" from " + DatabaseTables.TABLE_NAME_STUDENT_STANDARD+" studentStardard"
				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_STUDENT + " student ON "
				+"studentStardard.student_id="+"student.student_id";


		String whereClause = " where studentStardard.standard_id= ?";
		String orderClause = " ORDER BY student.first_name ASC";

		sql = sql + whereClause+orderClause;


		try {

			RowMapper<StudentModel> rowMapper = new RowMapper<StudentModel>() {
				@Override
				public StudentModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					StudentModel mi = new StudentModel();
					mi.setStandardId(rs.getInt(1));
					mi.setId(rs.getInt(2));
					mi.setRegNo(rs.getString(3));

					mi.setFirstName(rs.getString(4));
					mi.setLastName(rs.getString(5));

					return mi;
				}
			};
			list = (ArrayList<StudentModel>) jdbcTemplate.query(sql, rowMapper, standardId);
		} catch (Exception e) {
			DebugLog.print("StandardHelper::getStudentList::Exception: " + e, true);
		}
		return list;
	}

}




