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
import com.mindsmap.sanklap.models.AttendanceModel;
import com.mindsmap.sanklap.models.BranchModel;

public class BranchHelper {


	public BranchHelper() {
	}



	/*
	 * Get Branch list
	 */

	public ArrayList<BranchModel> getBranchList(JdbcTemplate jdbcTemplate) {

		ArrayList<BranchModel> list = new ArrayList<BranchModel>();

		String sql = "select "+"branch_id, "
				+ "branch_name, "
				+ "branch_code, "
				+ "email, "
				+ "address, "
				+ "phone1, "
				+ "city, "
				+ "state, "
				+ "pincode, "
				+ "facebook, "
				+ "youtube, "
				+ "instagram, "
				+ "image, "
				+ "is_active"


				+" from " + DatabaseTables.TABLE_NAME_BRANCH;

		String whereClause = " where is_active= ?";

		sql = sql + whereClause;

		try {

			RowMapper<BranchModel> rowMapper = new RowMapper<BranchModel>() {
				@Override
				public BranchModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					BranchModel mi = new BranchModel();
					mi.setId(rs.getInt(1));
					mi.setName(rs.getString(2));
					mi.setBranchCode(rs.getString(3));
					mi.setEmail(rs.getString(4));
					mi.setAddress(rs.getString(5));
					mi.setPhone(rs.getString(6));
					mi.setCity(rs.getString(7));
					mi.setState(rs.getString(8));
					mi.setPincode(rs.getString(9));
					mi.setFacebook(rs.getString(10));
					mi.setYoutube(rs.getString(11));
					mi.setInstagram(rs.getString(12));
					mi.setImage(rs.getString(13));
					mi.setIsActive(rs.getInt(14));

					return mi;
				}
			};
			list = (ArrayList<BranchModel>) jdbcTemplate.query(sql, rowMapper, 1);

		} catch (Exception e) {
			DebugLog.print("BranchHelper::getBranchList::Exception: " + e, true);
		}
		return list;
	}

}




