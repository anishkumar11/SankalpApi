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
import com.mindsmap.sanklap.models.SubjectModel;
import com.mindsmap.sanklap.models.SubjectModel;

public class SubjectHelper {


	public SubjectHelper() {
	}

	/*
	 * Get Subject list
	 */

	public ArrayList<SubjectModel> getSubjectList(int standardId, JdbcTemplate jdbcTemplate) {

		ArrayList<SubjectModel> list = new ArrayList<SubjectModel>();

		String sql = "select "+"subject_id, "
				+ "standard_id, "
				+ "subject_name"

				+" from " + DatabaseTables.TABLE_NAME_SUBJECT;


		String whereClause = " where standard_id= ?";
		String orderClause = " ORDER BY subject_name ASC";

		sql = sql + whereClause+orderClause;

		try {



			RowMapper<SubjectModel> rowMapper = new RowMapper<SubjectModel>() {
				@Override
				public SubjectModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					SubjectModel mi = new SubjectModel();
					//mi.setId(rs.getInt(1));
					mi.setId(rs.getInt(1));
					mi.setStandardId(rs.getInt(2));
					mi.setSubjectName(rs.getString(3));


					return mi;
				}
			};
			list = (ArrayList<SubjectModel>) jdbcTemplate.query(sql, rowMapper, standardId);
		} catch (Exception e) {
			DebugLog.print("SubjectHelper::getSubjectList::Exception: " + e, true);
		}
		return list;
	}

}




