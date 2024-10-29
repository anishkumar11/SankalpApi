package com.mindsmap.sanklap.database.helper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.models.TicketModel;

public class TicketsHelper {


	public TicketsHelper() {
	}

	/*
	 * Get ticket list
	 */

	public ArrayList<TicketModel> getTicketList(int studentId, JdbcTemplate jdbcTemplate) {

		ArrayList<TicketModel> list = new ArrayList<TicketModel>();

		String sql = "select "+"id, "
				+ "student_id, "
				+ "title, "
				+ "message, "
				+ "comment, "
				+ "status, "
				+ "createdAt,"
				+ "updatedAt"

				+" from " + DatabaseTables.TABLE_NAME_TICKETS;

		String whereClause = " where student_id= ?";
		String orderClause = " ORDER BY updatedAt DESC";

		sql = sql + whereClause+orderClause;

		try {

			RowMapper<TicketModel> rowMapper = new RowMapper<TicketModel>() {
				@Override
				public TicketModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					TicketModel mi = new TicketModel();
					//mi.setId(rs.getInt(1));
					mi.setId(rs.getInt(1));;
					mi.setStudent_id(rs.getInt(2));
					mi.setTitle(rs.getString(3));
					mi.setMessage(rs.getString(4));
					mi.setComment(rs.getString(5));
					mi.setStatus(rs.getInt(6));
					mi.setCreatedAt(rs.getString(7));
					mi.setUpdatedAt(rs.getString(8));


					return mi;
				}
			};
			list = (ArrayList<TicketModel>) jdbcTemplate.query(sql, rowMapper, studentId);


		} catch (Exception e) {
			DebugLog.print("TicketsHelper::getTicketList::Exception: " + e, true);
		}
		return list;
	}


	/*
	 * Get All ticket list
	 */

	public ArrayList<TicketModel> getAllTicketList(int ticketStatus, int page, JdbcTemplate jdbcTemplate) {

		int maxRowCount = 20;
		int startOffset = (page-1)*maxRowCount;

		ArrayList<TicketModel> list = new ArrayList<TicketModel>();

		String sql = "select "+"id, "
				+ "student_id, "
				+ "title, "
				+ "message, "
				+ "comment, "
				+ "status, "
				+ "createdAt,"
				+ "updatedAt"

				+" from " + DatabaseTables.TABLE_NAME_TICKETS;

		String whereClause = " where status= ?";
		String orderClause = " ORDER BY updatedAt DESC"+" limit "+startOffset+","+ maxRowCount;

		sql = sql + whereClause+orderClause;

		try {

			RowMapper<TicketModel> rowMapper = new RowMapper<TicketModel>() {
				@Override
				public TicketModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					TicketModel mi = new TicketModel();
					//mi.setId(rs.getInt(1));
					mi.setId(rs.getInt(1));;
					mi.setStudent_id(rs.getInt(2));
					mi.setTitle(rs.getString(3));
					mi.setMessage(rs.getString(4));
					mi.setComment(rs.getString(5));
					mi.setStatus(rs.getInt(6));
					mi.setCreatedAt(rs.getString(7));
					mi.setUpdatedAt(rs.getString(8));

					return mi;
				}
			};
			list = (ArrayList<TicketModel>) jdbcTemplate.query(sql, rowMapper, ticketStatus);

		} catch (Exception e) {
			DebugLog.print("TicketsHelper::getTicketList::Exception: " + e, true);
		}
		return list;
	}


	/**
	 * Create ticket
	 *
	 * @param mi
	 * @return
	 */

	public int createTicket(
			TicketModel pi, JdbcTemplate jdbcTemplate) {


		int result = 0;

		try {
			String updateAt = Utils.getUpdatedAtStamp();

			/**
			 *
			 */
			// the mysql insert statement
			String query = "insert into " + DatabaseTables.TABLE_NAME_TICKETS
					+ " (student_id, title, message, comment, status, branchId, updatedAt)"
					+ " values (?, ?, ?, ?, ?, ?, ?)";


			result = jdbcTemplate.update(query,
			        new Object[] {
			    			pi.getStudent_id(),
			    			pi.getTitle(),
			    			pi.getMessage(),
			    			pi.getComment(),
			    			pi.getStatus(),
			    			pi.getBranchId(),
			    			updateAt
			        		});

		} catch (Exception e) {
			DebugLog.print("TicketsHelper::createAttendance::Exception: " + e, true);
		}

		return result;
	}

	/**
	 * updateTicketStatus
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateTicketStatus(int ticketId,
			String comment, int status, JdbcTemplate jdbcTemplate) {

		if (ticketId <=0) {
			return false;
		}
		boolean result = false;

		try {
			// the mysql update statement
			String updateAt = Utils.getUpdatedAtStamp();

			String query = "update " + DatabaseTables.TABLE_NAME_TICKETS
					+ " set comment = ?"
					+ ", updatedAt = ?"
					+"', status = ?"
					+ " where id = ?";


			jdbcTemplate.update(query,
			        new Object[] {
			        		comment,
							updateAt,
							status,
							ticketId
			        		});

			result = true;

		} catch (Exception e) {
			DebugLog.print("ProfileHelper::updateTicketStatus::Exception: " + e, true);
		}

		return result;
	}

}



