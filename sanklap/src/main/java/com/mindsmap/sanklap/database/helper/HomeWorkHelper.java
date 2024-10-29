package com.mindsmap.sanklap.database.helper;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.database.DbUtils;
import com.mindsmap.sanklap.models.HomeWorkModel;

public class HomeWorkHelper {


	public HomeWorkHelper() {
	}


	/*
	 * Get home work list
	 */

	public ArrayList<HomeWorkModel> getHomeWorkList(int batchId, int page, JdbcTemplate jdbcTemplate) {

		int maxRowCount = 20;
		int startOffset = (page-1)*maxRowCount;

		ArrayList<HomeWorkModel> list = new ArrayList<HomeWorkModel>();

		String sql = "select "+"homeWork.note_id, "
				+ "homeWork.batch_id, "
				+ "homeWork.title, "
				+ "homeWork.standardid, "
				+ "homeWork.description, "
				+ "homeWork.Date, "
				+ "homeWork.information, "
				+ "homeWork.isactive, "

				+ "standard.standard_name, "

				+ "batch.batch_name, "

				+ "branch.branch_id, "
				+ "branch.branch_name"

				+" from " + DatabaseTables.TABLE_NAME_HOME_WORK+ " homeWork"

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_BATCH + " batch ON "
				+ "homeWork.batch_id="+"batch.batch_id"

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_BRANCH + " branch ON "
				+ "homeWork.batch_id="+"batch.batch_id && "
				+ "batch.Branch_id="+"branch.branch_id"

				+ " INNER JOIN "+ DatabaseTables.TABLE_NAME_STANDARD + " standard ON "
				+ "homeWork.standardid="+"standard.standard_id";



		String whereClause = " where homeWork.batch_id = ?";
		String orderClause = " ORDER BY Date DESC";
		String pagination = " limit "+startOffset+","+ maxRowCount;


		sql = sql + whereClause+orderClause+pagination;


		try {

			RowMapper<HomeWorkModel> rowMapper = new RowMapper<HomeWorkModel>() {
				@Override
				public HomeWorkModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					HomeWorkModel mi = new HomeWorkModel();
					mi.setId(rs.getInt(1));
					mi.setBatchId(rs.getInt(2));
					mi.setTitle(rs.getString(3));
					mi.setStandardId(rs.getInt(4));
					mi.setDescription(rs.getString(5));
					mi.setDate(rs.getString(6));
					mi.setRemarks(rs.getString(7));
					mi.setIsActive(rs.getInt(8));

					mi.setStandardName(rs.getString(9));
					mi.setBatchName(rs.getString(10));

					mi.setBranchId(rs.getInt(11));
					mi.setBranchName(rs.getString(12));


					return mi;
				}
			};
			list = (ArrayList<HomeWorkModel>) jdbcTemplate.query(sql, rowMapper, batchId);

		} catch (Exception e) {
			DebugLog.print("StandardHelper::getHomeWorkList::Exception: " + e, true);
		}
		return list;
	}



	/**
	 * Create Home work
	 *
	 *
	 * @param mi
	 * @return
	 */

	public int createHomeWork(
			HomeWorkModel pi, JdbcTemplate jdbcTemplate) {


		int result = 0;

		try {
			String updateAt = Utils.getUpdatedAtStamp();

			/**
			 *
			 */
			// the mysql insert statement
			String query = "insert into " + DatabaseTables.TABLE_NAME_HOME_WORK
					+ " (batch_id, title, standardid, description, Date, information, created_by, created_date, updated_by, updated_date, isactive)"
					+ " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";


			result = jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getBatchId(),
			    			pi.getTitle(),
			    			pi.getStandardId(),
			    			pi.getDescription(),
			    			pi.getDate(),

			    			pi.getRemarks(),
			    			pi.getCreatedBy(),
			    			updateAt,
			    			pi.getUpdatedBy(),
			    			updateAt,
			    			1
			        		});

		} catch (Exception e) {
			DebugLog.print("HomeWorkHelper::createHomeWork::Exception: " + e, true);
		}

		return result;
	}

	/**
	 * Update Home Work
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateHomeWork(HomeWorkModel pi, JdbcTemplate jdbcTemplate) {

		if (pi == null) {
			return false;
		}


		boolean result = false;
		PreparedStatement pstmt = null;


		try {
			// the mysql update statement
			String updatedAt = Utils.getUpdatedAtStamp();

			String query = "UPDATE " + DatabaseTables.TABLE_NAME_HOME_WORK
					+ " SET batch_id = ?"
					+ ", standardid = ?"
					+ ", updated_by = ?"
					+ ", updated_date = ?"
					+ ", title = ?"
					+ ", description = ?"
					+ ", Date = ?"
					+ ", information = ?"
					;

			String whereClause = " where note_id = ?";

			query = query+whereClause;


			jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getBatchId(),
			    		    pi.getStandardId(),
			    		    pi.getUpdatedBy(),
			    		    updatedAt,
			    		    pi.getTitle(),
			    		    pi.getDescription(),
			    		    pi.getDate(),
			    		    pi.getRemarks(),
			    		    //Where condition
			    		    pi.getId()
			        		});

			result = true;

		} catch (Exception e) {
			DebugLog.print("HomeWorkHelper::updateHomeWork::Exception: " + e, true);
		}

		return result;
	}



	/**
	 * Update home work status
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateHomeWorkStatus(int id, int status, JdbcTemplate jdbcTemplate) {

		if (id ==0) {
			return false;
		}


		boolean result = false;

		try {
			String query = "update " + DatabaseTables.TABLE_NAME_HOME_WORK
					+ " set isactive = ?"
					;

			String whereClause = " where note_id = ?";
			query = query+whereClause;

			jdbcTemplate.update(query,
			        new Object[] {
			        		status,
			        		id
			        		});

			result = true;

		} catch (Exception e) {
			DebugLog.print("HomeWorkHelper::updateHomeWorkStatus::Exception: " + e, true);
		}

		return result;
	}

	/**
	 * delete Home work ids = "1,2,3"
	 *
	 * @param mi
	 * @return
	 */

	public boolean deleteItems(String ids, JdbcTemplate jdbcTemplate) {

		if (Utils.isEmpty(ids)) {
			return false;
		}


		boolean result = false;

		try {
			String query = "Delete from " + DatabaseTables.TABLE_NAME_HOME_WORK + " where note_id in ('"+ ids+"')";

			jdbcTemplate.update(query);
			result = true;

		} catch (Exception e) {
			DebugLog.print("HomeWorkHelper::deleteHomeWork::Exception: " + e, true);
		}

		return result;
	}

}




