package com.mindsmap.sanklap.database.helper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.models.AdminUserModel;

public class AdminUserHelper {


	public AdminUserHelper() {
	}


	/*
	 * Get Admin user
	 */

public AdminUserModel doAdminLogin(int userId, String userName, String password,
		JdbcTemplate jdbcTemplate) {

		AdminUserModel mi = null;

		String sql = "select "+"id, "
				+ "name, "
				+ "user_name, "
				+ "email, "
				+ "mobile, "
				+ "teacher_id, "
				+ "is_active, "
				+ "Branch_id, "
				+ "Role_id"

				+" from " + DatabaseTables.TABLE_NAME_ADMIN_USER;

		String whereClause = "";
		if(userId <= 0) {
			whereClause = " where ("
					+"LOWER(user_name)= ?"
					+" OR LOWER(email)= ?"
					+" OR LOWER(mobile)= ?"
					+")"
					+" && password = ?";
		}else {
			whereClause = " where id = ?";
		}


		sql = sql + whereClause;

		try {

			RowMapper<AdminUserModel> rowMapper = new RowMapper<AdminUserModel>() {
				@Override
				public AdminUserModel mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					AdminUserModel mi = new AdminUserModel();
					mi.setId(rs.getInt(1));
					mi.setName(rs.getString(2));

					mi.setUserName(rs.getString(3));
					mi.setEmail(rs.getString(4));
					mi.setMobile(rs.getString(5));
					mi.setTeacherId(rs.getInt(6));
					mi.setIsActive(rs.getInt(7));
					mi.setBranchId(rs.getInt(8));
					mi.setRoleId(rs.getInt(9));
					return mi;
				}
			};
			userName = userName.toLowerCase();
			if(userId <= 0) {
				mi = jdbcTemplate.queryForObject(sql, rowMapper, userName, userName, userName, password);
			}else {
				mi = jdbcTemplate.queryForObject(sql, rowMapper, userId);
			}

		} catch (Exception e) {
			DebugLog.print("AdminUserHelper::doAdminLogin::Exception: " + e, true);
		}
		return mi;
	}


}





