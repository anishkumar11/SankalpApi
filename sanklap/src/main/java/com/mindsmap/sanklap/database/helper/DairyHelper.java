package com.mindsmap.sanklap.database.helper;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.DatabaseConfig;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.database.DbUtils;
import com.mindsmap.sanklap.models.DairyModel;
import com.mindsmap.sanklap.models.DairyModel;
import com.mindsmap.sanklap.models.FeedbackModel;
import com.mindsmap.sanklap.models.HomeWorkModel;

public class DairyHelper {


	public DairyHelper() {
	}


	/*
	 * Get Dairy item list
	 */

	public ArrayList<DairyModel> getDairyItemList(int batchId, int status, int page, JdbcTemplate jdbcTemplate) {

		int maxRowCount = 20;
		int startOffset = (page-1)*maxRowCount;


		ArrayList<DairyModel> list = new ArrayList<DairyModel>();

		String sql = "select "+"dairy.dairy_id, "
				+ "dairy.title, "
				+ "dairy.batch_id, "
				+ "dairy.description, "
				+ "dairy.date, "
				+ "dairy.image_url, "
				+ "dairy.is_active, "
				+ "dairy.created_date, "
				+ "dairy.updated_date, "


				+ "batch.batch_name, "
				+ "standard.standard_id, "
				+ "standard.standard_name, "

				+ "branch.branch_id, "
				+ "branch.branch_name"


				+" from " + DatabaseTables.TABLE_NAME_DAIRY+ " dairy"

				+ " LEFT JOIN "+ DatabaseTables.TABLE_NAME_BATCH + " batch ON "
				+ "dairy.batch_id="+"batch.batch_id"

				+ " LEFT JOIN "+ DatabaseTables.TABLE_NAME_BRANCH + " branch ON "
				+ "dairy.batch_id="+"batch.batch_id && "
				+ "dairy.Branch_id="+"branch.branch_id"

				+ " LEFT JOIN "+ DatabaseTables.TABLE_NAME_STANDARD + " standard ON "
				+ "batch.standard_id="+"standard.standard_id";

		String whereClause = " where dairy.batch_id= "+batchId;
		if(status <= 1) {
			whereClause = whereClause + " && dairy.is_active= "+status;
		}
		String orderClause = " ORDER BY dairy.date DESC";
		String pagination = " limit "+startOffset+","+ maxRowCount;

		sql = sql + whereClause+orderClause+pagination;

		try {

			RowMapper<DairyModel> rowMapper = new RowMapper<DairyModel>() {
				@Override
				public DairyModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					DairyModel mi = new DairyModel();
					mi.setId(rs.getInt(1));
					mi.setTitle(rs.getString(2));
					mi.setBatchId(rs.getInt(3));
					mi.setDescription(rs.getString(4));
					mi.setDate(rs.getString(5));
					mi.setImageUrl(rs.getString(6));
					mi.setIsActive(rs.getInt(7));
					mi.setCreatedDate(rs.getString(8));
					mi.setUpdatedDate(rs.getString(9));

					mi.setBatchName(rs.getString(10));
					mi.setStandardId(rs.getInt(11));
					mi.setStandardName(rs.getString(12));

					mi.setBranchId(rs.getInt(13));
					mi.setBranchName(rs.getString(14));


					return mi;
				}
			};
			list = (ArrayList<DairyModel>) jdbcTemplate.query(sql, rowMapper);

		} catch (Exception e) {
			DebugLog.print("DairyHelper::getDairyItemList::Exception: " + e, true);
		}
		return list;
	}

	/**
	 * Create Diary
	 * @param mi
	 * @return
	 */

	public int createDiaryItem(
			DairyModel pi, int createdBy, JdbcTemplate jdbcTemplate) {

		int result = 0;

		try {
			String updateAt = Utils.getUpdatedAtStamp();

			/**
			 */
			// the mysql insert statement
			String query = "insert into " + DatabaseTables.TABLE_NAME_DAIRY
					+ " (Branch_id, batch_id, standard_id, title, description, image_url, date, is_active, created_by, updated_by, updated_date)"
					+ " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";


			// execute query
			result = jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getBranchId(),
			    			pi.getBatchId(),
			    			pi.getStandardId(),
			    			pi.getTitle(),
			    			pi.getDescription(),
			    			pi.getImageUrl(),
			    			pi.getDate(),

			    			pi.getIsActive(),
			    			createdBy,
			    			createdBy,
			    			updateAt,
			    			});

		} catch (Exception e) {
			DebugLog.print("HomeWorkHelper::createDiaryItem::Exception: " + e, true);
		}

		return result;
	}


	/**
	 * Update Dairy Item
	 *
	 * @param mi
	 * @return
	 */


	public boolean updateDaiyItem(DairyModel pi, int updatedBy, JdbcTemplate jdbcTemplate) {

		if (pi == null) {
			return false;
		}

		boolean result = false;
		try {
			// the mysql update statement
			String updatedAt = Utils.getUpdatedAtStamp();

			String query = "UPDATE " + DatabaseTables.TABLE_NAME_DAIRY
					+ " SET batch_id = ?"
					+ ", standard_id = ?"
					+ ", Branch_id = ?"
					+ ", updated_by = ?"
					+ ", updated_date = ?"
					+ ", title = ?"
					+ ", description = ?"
					+ ", date = ?"
					+ ", image_url = ?"
					;

			String whereClause = " where dairy_id = ?";

			query = query+whereClause;

			// create the mysql


		    jdbcTemplate.update(query,
			        new Object[] {
			    			pi.getBatchId(),
			    		    pi.getStandardId(),
			    		    pi.getBranchId(),
			    		    updatedBy,
			    		    updatedAt,
			    		    pi.getTitle(),
			    		    pi.getDescription(),
			    		    pi.getDate(),
			    		    pi.getImageUrl(),

			    		    //Where condition
			    		    pi.getId()
			    			});

			result = true;

		} catch (Exception e) {
			DebugLog.print("DairyHelper::updateDaiyItem::Exception: " + e, true);
		}

		return result;
	}


	/**
	 * Update Dairy item status
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateDairyItemStatus(int id, int status, JdbcTemplate jdbcTemplate) {

		if (id ==0) {
			return false;
		}

		boolean result = false;

		try {
			String query = "update " + DatabaseTables.TABLE_NAME_DAIRY
					+ " set is_active = ?"
					;

			String whereClause = " where dairy_id = ?";
			query = query+whereClause;

			jdbcTemplate.update(query,
			        new Object[] {
			        		status,
			        		id
			        		});
			result = true;

		} catch (Exception e) {
			DebugLog.print("DairyHelper::updateDairyItemStatus::Exception: " + e, true);
		}
		return result;
	}

}





