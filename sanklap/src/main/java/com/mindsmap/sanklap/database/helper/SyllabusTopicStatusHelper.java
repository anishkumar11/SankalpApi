package com.mindsmap.sanklap.database.helper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.models.TopicStatusModel;

public class SyllabusTopicStatusHelper {

	public SyllabusTopicStatusHelper() {
	}


	/**
	 * Create topic status
	 *
	 * @param mi
	 * @return
	 */

	public int createSyllabusTopicStatus(
			TopicStatusModel pi, JdbcTemplate jdbcTemplate) {



		int result = checkTopicStatusExist(pi.getTopicId(), pi.getBranchId(), jdbcTemplate);

		try {

			if(result > 0) {
				//do update
				updateSyllabusTopicStatus(pi, jdbcTemplate);

			}else {

				String updateAt = Utils.getUpdatedAtStamp();

				// the mysql insert statement
				String query = "insert into " + DatabaseTables.TABLE_NAME_SYLLABUS_TOPIC_STATUS
						+ " (topicId, branchId, status, createdBy, updatedBy, updatedAt)"
						+ " values (?, ?, ?, ?, ?, ?)";

				// create the mysql insert preparedstatement


				result = jdbcTemplate.update(query,
				        new Object[] {
								pi.getTopicId(),
								pi.getBranchId(),
								pi.getStatus(),
								pi.getCreatedBy(),
								pi.getUpdatedBy(),
								updateAt
								});
			}

		} catch (Exception e) {
			DebugLog.print("SyllabusTopicStatusHelper::createSyllabusTopic::Exception: " + e, true);
		}

		return result;
	}

	/**
	 *  Check topic status exist
	 */
	private int checkTopicStatusExist(int topicId, int branchId, JdbcTemplate jdbcTemplate) {

		int result = 0;
		String sql = "select "+"id"

				+" from " + DatabaseTables.TABLE_NAME_SYLLABUS_TOPIC_STATUS;

		String whereClause = " where topicId= ?"+ " && branchId= ?";
		String orderClause = " ORDER BY updatedAt DESC";

		sql = sql + whereClause+orderClause;

		try {


			RowMapper<String> rowMapper = new RowMapper<String>() {
				@Override
				public String mapRow(ResultSet rs, int rowNum) throws SQLException {

					return String.valueOf(rs.getInt(1));
				}
			};
			String mi = jdbcTemplate.queryForObject(sql, rowMapper, topicId, branchId);
			if(!Utils.isEmpty(mi)) {
				result = Integer.parseInt(mi);
			}

		} catch (Exception e) {
			DebugLog.print("SyllabusTopicStatusHelper::checkTopicStatusExist::Exception: " + e, true);
		}
		return result;
	}

	/**
	 * updateTopicStatus
	 *
	 * @param mi
	 * @return
	 */

	private boolean updateSyllabusTopicStatus(TopicStatusModel pi, JdbcTemplate jdbcTemplate) {

		boolean result = false;

		try {
			// the mysql update statement
			//String updateAt = Utils.getUpdatedAtStamp();

			String query = "update " + DatabaseTables.TABLE_NAME_SYLLABUS_TOPIC_STATUS + " set "
					+ "status = ?"
					+ ", updatedBy = ?"
					+ " where topicId = ?"
					+" && branchId= ?";

			jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getStatus(),
							pi.getUpdatedBy(),
							pi.getTopicId(),
							pi.getBranchId()
			        		});

			result = true;

		} catch (Exception e) {
			DebugLog.print("SyllabusTopicStatusHelper::updateSyllabusTopicStatus::Exception: " + e, true);
		}

		return result;
	}

}





