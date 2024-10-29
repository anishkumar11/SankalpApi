package com.mindsmap.sanklap.database.helper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.models.EventModel;

public class EventHelper {

	public EventHelper() {
	}


	/*
	 * Get Dairy item list
	 */

	public ArrayList<EventModel> getEventItemList(int branchId, String searchKeyword, int status, int page, JdbcTemplate jdbcTemplate) {

		int maxRowCount = 20;
		int startOffset = (page-1)*maxRowCount;

		ArrayList<EventModel> list = new ArrayList<EventModel>();

		String sql = "select "+"event.event_id, "
				+ "event.event_title, "
				+ "event.event_description, "
				+ "event.event_image, "
				+ "event.event_date, "
				+ "event.is_active, "
				+ "event.created_date, "
				+ "event.updated_date, "

				+ "branch.branch_id, "
				+ "branch.branch_name"

				+" from " + DatabaseTables.TABLE_NAME_EVENT+ " event"

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_BRANCH + " branch ON "
				+ "event.Branch_id="+"branch.branch_id";

		String whereClause = " where event.Branch_id= "+branchId;
		if(!Utils.isEmpty(searchKeyword)) {
			whereClause = whereClause +" && event.event_date like '%"+searchKeyword+"%'";
		}

		if(status <= 1) {
			whereClause = whereClause + " && event.is_active= "+status;
		}

		String orderClause = " ORDER BY event.event_date DESC";
		String pagination = " limit "+startOffset+","+ maxRowCount;

		sql = sql + whereClause+orderClause+pagination;

		try {

			RowMapper<EventModel> rowMapper = new RowMapper<EventModel>() {
				@Override
				public EventModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					EventModel mi = new EventModel();
					mi.setId(rs.getInt(1));
					mi.setTitle(rs.getString(2));
					mi.setDescription(rs.getString(3));
					mi.setImageUrl(rs.getString(4));
					mi.setDate(rs.getString(5));
					mi.setIsActive(rs.getInt(6));
					mi.setCreatedDate(rs.getString(7));
					mi.setUpdatedDate(rs.getString(8));
					mi.setBranchId(rs.getInt(9));
					mi.setBranchName(rs.getString(10));


					return mi;
				}
			};
			list = (ArrayList<EventModel>) jdbcTemplate.query(sql, rowMapper);


		} catch (Exception e) {
			DebugLog.print("EventHelper::getEventItemList::Exception: " + e, true);
		}
		return list;
	}

	/**
	 * Create Event Item
	 * @param mi
	 * @return
	 */

	public int createEventItem(
			EventModel pi, int createdBy, JdbcTemplate jdbcTemplate) {

		int result = 0;

		try {
			String updateAt = Utils.getUpdatedAtStamp();

			// the mysql insert statement
			String query = "insert into " + DatabaseTables.TABLE_NAME_EVENT
					+ " (Branch_id, event_title, event_description, event_image, event_date, is_active, created_by, updated_by, updated_date, created_date)"
					+ " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			// execute the preparedstatement
			result = jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getBranchId(),
			    			pi.getTitle(),
			    			pi.getDescription(),
			    			pi.getImageUrl(),
			    			pi.getDate(),

			    			pi.getIsActive(),
			    			createdBy,
			    			createdBy,
			    			updateAt,
			    			updateAt,
			        		});

		} catch (Exception e) {
			DebugLog.print("EventHelper::createEventItem::Exception: " + e, true);
		}

		return result;
	}


	/**
	 * Update Dairy Item
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateEventItem(EventModel pi, int updatedBy, JdbcTemplate jdbcTemplate) {

		if (pi == null) {
			return false;
		}

		boolean result = false;

		try {
			// the mysql update statement
			String updatedAt = Utils.getUpdatedAtStamp();


			String query = "update " + DatabaseTables.TABLE_NAME_EVENT
					+ " set Branch_id = ?"
					+ ", updated_by = ?"

					+ ", updated_date = ?"
					+ ", event_title = ?"
					+ ", event_description = ?"
					+ ", event_date = ?"
					+ ", event_image = ?"
					;

			String whereClause = " where event_id = ?";

			query = query+whereClause;

			jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getBranchId(),
			        		updatedBy,
			        		updatedAt,
			        		pi.getTitle(),
			        		pi.getDescription(),
			        		pi.getDate(),
			        		pi.getImageUrl(),
			        		pi.getId()
			        		});

			result = true;

		} catch (Exception e) {
			DebugLog.print("EventHelper::updateEventItem::Exception: " + e, true);
		}

		return result;
	}

	/**
	 * Update Dairy item status
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateEventItemStatus(int id, int status, JdbcTemplate jdbcTemplate) {

		if (id ==0) {
			return false;
		}

		boolean result = false;

		try {
			String query = "update " + DatabaseTables.TABLE_NAME_EVENT
					+ " set is_active = ?"
					;

			String whereClause = " where event_id = ?";
			query = query+whereClause;

			jdbcTemplate.update(query,
			        new Object[] {
			        		status,
			        		id
			        		});
			result = true;

		} catch (Exception e) {
			DebugLog.print("EventHelper::updateEventItemStatus::Exception: " + e, true);
		}
		return result;
	}

}







