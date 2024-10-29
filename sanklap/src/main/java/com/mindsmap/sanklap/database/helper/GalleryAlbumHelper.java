package com.mindsmap.sanklap.database.helper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.database.DbUtils;
import com.mindsmap.sanklap.models.AlbumModel;

public class GalleryAlbumHelper {

	public GalleryAlbumHelper() {
	}


	/*
	 * Get Album list
	 */

	public ArrayList<AlbumModel> getAlbumList(int branchId, int batchId, int status, int page, JdbcTemplate jdbcTemplate) {

		int maxRowCount = 20;
		int startOffset = (page-1)*maxRowCount;

		ArrayList<AlbumModel> list = new ArrayList<AlbumModel>();

		String sql = "select "+"album.album_id, "
				+ "album.album_title, "
				+ "album.album_thumbnail, "
				+ "album.album_date, "
				+ "album.is_active, "
				+ "album.created_date, "
				+ "album.updated_date, "

				+ "batch.batch_name, "
				+ "standard.standard_id, "
				+ "standard.standard_name, "

				+ "branch.branch_id, "
				+ "branch.branch_name"

				+" from " + DatabaseTables.TABLE_NAME_GALLERY_ALBUM+ " album"

				+ " LEFT JOIN "+ DatabaseTables.TABLE_NAME_BATCH + " batch ON "
				+ "album.batchId="+"batch.batch_id"

				+ " LEFT JOIN "+ DatabaseTables.TABLE_NAME_BRANCH + " branch ON "
				+ "album.Branch_id="+"branch.branch_id"

				+ " LEFT JOIN "+ DatabaseTables.TABLE_NAME_STANDARD + " standard ON "
				+ "batch.standard_id="+"standard.standard_id";

		String whereClause = " where album.Branch_id= "+branchId + " && album.batchId = "+batchId;

		if(status <= 1) {
			whereClause = whereClause + " && album.is_active= "+status;
		}

		String orderClause = " ORDER BY album.album_date DESC";
		String pagination = " limit "+startOffset+","+ maxRowCount;

		sql = sql + whereClause+orderClause+pagination;

		try {

			RowMapper<AlbumModel> rowMapper = new RowMapper<AlbumModel>() {
				@Override
				public AlbumModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					AlbumModel mi = new AlbumModel();
					mi.setId(rs.getInt(1));
					mi.setTitle(rs.getString(2));
					mi.setThumbnail(rs.getString(3));
					if(!Utils.isEmpty(mi.getThumbnail())) {
						mi.setThumbnail(Utils.imagePathFormation(mi.getThumbnail()));
					}

					mi.setDate(rs.getString(4));
					mi.setIsActive(rs.getInt(5));
					mi.setCreatedDate(rs.getString(6));
					mi.setUpdatedDate(rs.getString(7));

					mi.setBatchName(rs.getString(8));
					mi.setBatchId(batchId);
					mi.setStandardId(rs.getInt(9));
					mi.setStandardName(rs.getString(10));

					mi.setBranchId(rs.getInt(11));
					mi.setBranchName(rs.getString(12));

					mi.setPhotoCount(GalleryAlbumDataHelper.getAlbumItemCount(mi.getId(), 1, status, jdbcTemplate));
					mi.setVideoCount(GalleryAlbumDataHelper.getAlbumItemCount(mi.getId(), 2, status, jdbcTemplate));


					return mi;
				}
			};
			list = (ArrayList<AlbumModel>) jdbcTemplate.query(sql, rowMapper);

		} catch (Exception e) {
			DebugLog.print("GalleryAlbumHelper::getAlbumList::Exception: " + e, true);
		}
		return list;
	}

	/**
	 * Create Album
	 * @param mi
	 * @return
	 */

	public int createAlbum(
			AlbumModel pi, int createdBy, JdbcTemplate jdbcTemplate) {


		int result = 0;
		try {
			String updateAt = Utils.getUpdatedAtStamp();

			// the mysql insert statement
			String query = "insert into " + DatabaseTables.TABLE_NAME_GALLERY_ALBUM
					+ " (Branch_id, batchId, album_title, album_date, album_thumbnail, is_active, created_by, updated_by, updated_date, created_date)"
					+ " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";


			result = jdbcTemplate.update(query,
			        new Object[] {
			        		pi.getBranchId(),
			    			pi.getBatchId(),
			    			pi.getTitle(),
			    			pi.getDate(),
			    			pi.getThumbnail(),

			    			pi.getIsActive(),
			    			createdBy,
			    			createdBy,
			    			updateAt,
			    			updateAt,
			        		});

		} catch (Exception e) {
			DebugLog.print("GalleryAlbumHelper::createAlbum::Exception: " + e, true);
		}

		return result;
	}


	/**
	 * Update Album
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateAlbum(AlbumModel pi, int updatedBy, boolean isFromCreate, JdbcTemplate jdbcTemplate) {

		if (pi == null) {
			return false;
		}


		boolean result = false;

		try {
			// the mysql update statement
			String updatedAt = Utils.getUpdatedAtStamp();

			/**
			 *
			 */
			String query = "";


			if(isFromCreate) {
				query = "update " + DatabaseTables.TABLE_NAME_GALLERY_ALBUM
						+ " set Branch_id = ?"
						+ ", batchId = ?"
						+ ", updated_by = ?"

						+ ", updated_date = ?"
						+ ", album_title = ?"
						+ ", album_date = ?"
						+ ", album_thumbnail = ?"
						;

				String whereClause = " where album_id = ";
				query = query+whereClause;

				jdbcTemplate.update(query,
				        new Object[] {
				        		pi.getBranchId(),
								pi.getBatchId(),
								updatedBy,
								updatedAt,
								pi.getTitle(),
								pi.getDate(),
								pi.getThumbnail(),
								pi.getId()
				        		});

			}else {
				query = "update " + DatabaseTables.TABLE_NAME_GALLERY_ALBUM
						+ " set Branch_id = ?"
						+ ", batchId = ?"
						+ ", updated_by = ?"

						+ ", updated_date = ?"
						+ ", album_title = ?"
						+ ", album_date = ?"
						;

				String whereClause = " where album_id = ?";
				query = query+whereClause;

				jdbcTemplate.update(query,
				        new Object[] {
				        		pi.getBranchId(),
								pi.getBatchId(),
								updatedBy,
								updatedAt,
								pi.getTitle(),
								pi.getDate(),
								pi.getId()
				        		});
			}





			result = true;

		} catch (Exception e) {
			DebugLog.print("GalleryAlbumHelper::updateAlbum::Exception: " + e, true);
		}

		return result;
	}

	/**
	 * Update Dairy item status
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateAlbumStatus(int id, int status, JdbcTemplate jdbcTemplate) {

		if (id ==0) {
			return false;
		}


		boolean result = false;

		try {
			String query = "update " + DatabaseTables.TABLE_NAME_GALLERY_ALBUM
					+ " set is_active = " + status
					;

			String whereClause = " where album_id = ?";
			query = query+whereClause;

			jdbcTemplate.update(query,
			        new Object[] {
			        		id
			        		});
			result = true;

		} catch (Exception e) {
			DebugLog.print("GalleryAlbumHelper::updateAlbumStatus::Exception: " + e, true);
		}

		return result;
	}

	/**
	 * delete Album items ids = "1,2,3"
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
			String query = "Delete from " + DatabaseTables.TABLE_NAME_GALLERY_ALBUM + " where album_id in ('"+ ids+"')";

			jdbcTemplate.update(query,
			        new Object[] {
			        		});

			result = true;

		} catch (Exception e) {
			DebugLog.print("GalleryAlbumDataHelper::deleteItems::Exception: " + e, true);
		}

		return result;
	}
}







