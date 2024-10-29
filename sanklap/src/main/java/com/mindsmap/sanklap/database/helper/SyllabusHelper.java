package com.mindsmap.sanklap.database.helper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.core.TopicStatus;
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.models.SubjectModel;
import com.mindsmap.sanklap.models.SyllabusTopicModel;

public class SyllabusHelper {


	public SyllabusHelper() {
	}


	/*
	 * Get topic list
	 */

	public ArrayList<SyllabusTopicModel> getTopicList(int subjectId, int branchId, JdbcTemplate jdbcTemplate) {

		ArrayList<SyllabusTopicModel> list = new ArrayList<SyllabusTopicModel>();

		String sql = "select "+"topic.id, "
				+ "topic.subject_id, "
				+ "topic.topic_name, "
				+ "topic.description, "
				+ "topic.isActive, "
				+ "topic.createdAt,"
				+ "topic.updatedAt, "

				+ "topicStatus.status, "
				+ "statusVal.name"

				+" from " + DatabaseTables.TABLE_NAME_SYLLABUS_TOPICS+ " topic"

				+ " LEFT JOIN "+ DatabaseTables.TABLE_NAME_SYLLABUS_TOPIC_STATUS + " topicStatus ON "
				+ "topic.id="+"topicStatus.topicId && topicStatus.branchId="+branchId

				+ " LEFT JOIN "+ DatabaseTables.TABLE_NAME_TOPIC_STATUS + " statusVal ON "
				+ "statusVal.status="+"topicStatus.status";

		String whereClause = " where subject_id= ?";
		String orderClause = " ORDER BY updatedAt DESC";

		sql = sql + whereClause+orderClause;

		try {


			RowMapper<SyllabusTopicModel> rowMapper = new RowMapper<SyllabusTopicModel>() {
				@Override
				public SyllabusTopicModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					SyllabusTopicModel mi = new SyllabusTopicModel();
					mi.setId(rs.getInt(1));;
					mi.setSubject_id(rs.getInt(2));
					mi.setTopicName(rs.getString(3));
					mi.setDescription(rs.getString(4));
					mi.setIsActive(rs.getInt(5));
					mi.setCreatedAt(rs.getString(6));
					mi.setUpdatedAt(rs.getString(7));

					int status = rs.getInt(8);
					if(status == 0) {
						status = 1;
					}
					mi.setStatus(status);

					String statusLabel= rs.getString(9);
					if(Utils.isEmpty(statusLabel)) {
						statusLabel = getStatusVal(status, jdbcTemplate);
					}
					mi.setStatusLabel(statusLabel);


					return mi;
				}
			};
			list = (ArrayList<SyllabusTopicModel>) jdbcTemplate.query(sql, rowMapper, subjectId);

		} catch (Exception e) {
			DebugLog.print("SyllabusHelper::getTopicList::Exception: " + e, true);
		}
		return list;
	}

	private String getStatusVal(int statusId, JdbcTemplate jdbcTemplate) {

		String statusLabel = "";

		String sql = "select "+"name"

				+" from " + DatabaseTables.TABLE_NAME_TOPIC_STATUS;


		String whereClause = " where status= ?";

		sql = sql + whereClause;

		try {

			RowMapper<String> rowMapper = new RowMapper<String>() {
				@Override
				public String mapRow(ResultSet rs, int rowNum) throws SQLException {
					return rs.getString(1);
				}
			};
			statusLabel = jdbcTemplate.queryForObject(sql, rowMapper, statusId);

		} catch (Exception e) {
			DebugLog.print("SubjectHelper::getSubjectList::Exception: " + e, true);
		}
		return statusLabel;
	}

	/**
	 * Fetch all subjects
	 * @param standardId
	 * @return
	 */

	public ArrayList<SubjectModel> getSubjectList(int standardId, int branchId, JdbcTemplate jdbcTemplate) {

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
						mi.setId(rs.getInt(1));
						mi.setStandardId(rs.getInt(2));
						mi.setSubjectName(rs.getString(3));

						checkSubjectSyllabusStatus(mi, branchId, jdbcTemplate);

						return mi;
					}
				};
				list = (ArrayList<SubjectModel>) jdbcTemplate.query(sql, rowMapper, standardId);

			} catch (Exception e) {
				DebugLog.print("SubjectHelper::getSubjectList::Exception: " + e, true);
			}
			return list;
		}
	/*
	 * checkSubjectSyllabusStatus
	 */

	private void checkSubjectSyllabusStatus(SubjectModel subjectModel, int branchId, JdbcTemplate jdbcTemplate) {

		String sql = "select "
				+ "topicStatus.status"

				+" from " + DatabaseTables.TABLE_NAME_SYLLABUS_TOPICS+ " topic"

				+ " LEFT JOIN "+ DatabaseTables.TABLE_NAME_SYLLABUS_TOPIC_STATUS + " topicStatus ON "
				+ "topic.id="+"topicStatus.topicId && topicStatus.branchId="+branchId;


		String whereClause = " where subject_id= ?";
		String orderClause = "";

		sql = sql + whereClause+orderClause;

		try {


			RowMapper<String> rowMapper = new RowMapper<String>() {
				@Override
				public String mapRow(ResultSet rs, int rowNum) throws SQLException {

					return String.valueOf(rs.getInt(1));
				}
			};
			ArrayList<String> list = (ArrayList<String>) jdbcTemplate.query(sql, rowMapper, subjectModel.getId());

			int count = 0,
					completedCount = 0;

			for (int i = 0; i < list.size();i++) {
				count++;
				int status = Integer.parseInt(list.get(i));
				if(status == TopicStatus.STATUS_COMPLETED) {
					completedCount++;
				}
			}
			subjectModel.setTotalTopics(count);
			subjectModel.setTotalTopicCompleted(completedCount);


		} catch (Exception e) {
			DebugLog.print("SyllabusHelper::checkSubjectSyllabusStatus::Exception: " + e, true);
		}
	}


	/**
	 * Create topic
	 *
	 * @param mi
	 * @return
	 */

	public int createSyllabusTopic(
			SyllabusTopicModel pi, JdbcTemplate jdbcTemplate) {


		int result = 0;

		try {
			String updateAt = Utils.getUpdatedAtStamp();

			// the mysql insert statement
			String query = "insert into " + DatabaseTables.TABLE_NAME_SYLLABUS_TOPICS
					+ " (subject_id, topic_name, description, isActive, updatedAt)"
					+ " values (?, ?, ?, ?, ?)";


			result = jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getSubject_id(),
			    			pi.getTopicName(),
			    			pi.getDescription(),
			    			pi.getStatus(),
			    			updateAt,
			        		});

		} catch (Exception e) {
			DebugLog.print("SyllabusHelper::createSyllabusTopic::Exception: " + e, true);
		}
		return result;
	}

	/**
	 * updateTopicStatus
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateTopicStatus(int id, int status, JdbcTemplate jdbcTemplate) {


		boolean result = false;

		try {
			// the mysql update statement
			//String updateAt = Utils.getUpdatedAtStamp();

			String query = "update " + DatabaseTables.TABLE_NAME_SYLLABUS_TOPICS
					+ " set isActive = ?"
					+ " where id = ?";

			jdbcTemplate.update(query,
			        new Object[] {
			        		status,
							id
			        		});

			result = true;

		} catch (Exception e) {
			DebugLog.print("ProfileHelper::updateTicketStatus::Exception: " + e, true);
		}

		return result;
	}

	public boolean updateTopicDetail(SyllabusTopicModel pi, JdbcTemplate jdbcTemplate) {

		if (pi == null) {
			return false;
		}


		boolean result = false;

		try {
			// the mysql update statement
			String updateAt = Utils.getUpdatedAtStamp();

			String query = "update " + DatabaseTables.TABLE_NAME_SYLLABUS_TOPICS
					+ " set topic_name = ?"
					+ "', description = ?"
					+ " where id = ?";

			jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getTopicName(),
							pi.getDescription(),
							pi.getId()
			        		});
			result = true;

		} catch (Exception e) {
			DebugLog.print("ProfileHelper::updateTicketStatus::Exception: " + e, true);
		}

		return result;
	}

}




