package com.mindsmap.sanklap.database.helper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.models.LeaveModel;

public class LeaveHelper {

	public LeaveHelper() {
	}

	/*
	 * Get Leave list
	 */

	public ArrayList<LeaveModel> getLeaveList(String mobile, String studentClass, JdbcTemplate jdbcTemplate) {


		ArrayList<LeaveModel> list = new ArrayList<LeaveModel>();

		String sql = "select "+"mobile, "
				+ "name, "
				+ "fromDate, "
				+ "toDate, "
				+ "days, "
				+ "reason, "
				+ "class"

				+" from " + DatabaseTables.TABLE_NAME_LEAVE;

		String whereClause = " where "+ "mobile LIKE '"+mobile+"%'" + " && class LIKE '"+studentClass+"%'";
		String orderClause = " ORDER BY createDate DESC";

		sql = sql + whereClause+orderClause;

		try {


			RowMapper<LeaveModel> rowMapper = new RowMapper<LeaveModel>() {
				@Override
				public LeaveModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					LeaveModel mi = new LeaveModel();
					//mi.setId(rs.getInt(1));
					mi.setMobile(rs.getString(1));;
					mi.setName(rs.getString(2));
					mi.setFromDate(rs.getString(3));
					mi.setToDate(rs.getString(4));
					mi.setDays(rs.getInt(5));
					mi.setReason(rs.getString(6));
					mi.setStudentClass(rs.getString(7));


					return mi;
				}
			};
			list = (ArrayList<LeaveModel>) jdbcTemplate.query(sql, rowMapper);

		} catch (Exception e) {
			DebugLog.print("LeaveHelper::getLeaveList::Exception: " + e, true);
		}
		return list;
	}


	/**
	 * Create leave
	 *
	 * @param mi
	 * @return
	 */

	public int createLeave(
			LeaveModel pi, JdbcTemplate jdbcTemplate) {


		int result = 0;

		try {
		//	String updateAt = Utils.getUpdatedAtStamp();

			// the mysql insert statement
			String query = "insert into " + DatabaseTables.TABLE_NAME_LEAVE
					+ " (mobile, name, fromDate, toDate, days, reason, class)"
					+ " values (?, ?, ?, ?, ?, ?, ?)";


			result = jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getMobile(),
			    			pi.getName(),
			    			pi.getFromDate(),
			    			pi.getToDate(),
			    			pi.getDays(),
			    			pi.getReason(),
			    			pi.getStudentClass(),
			        		});

		} catch (Exception e) {
			DebugLog.print("LeaveHelper::createAttendance::Exception: " + e, true);
		}

		return result;
	}



}



