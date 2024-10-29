package com.mindsmap.sanklap.database.helper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mindsmap.sanklap.core.Constants;
import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.DatabaseTables;
import com.mindsmap.sanklap.models.AlbumItemModel;

public class GalleryAlbumDataHelper {

	public GalleryAlbumDataHelper() {
	}



	/*
	 * Get Album item list
	 */

	public ArrayList<AlbumItemModel> getAlbumItemList(int albumId, int isImage, int status, int page, JdbcTemplate jdbcTemplate) {

		/**
		 * , , , , , , ,
		 */
		int maxRowCount = 20;
		int startOffset = (page-1)*maxRowCount;

		ArrayList<AlbumItemModel> list = new ArrayList<AlbumItemModel>();

		String sql = "select "+"albumItem.image_id, "
				+ "albumItem.album_id, "
				+ "albumItem.title, "
				+ "albumItem.url, "
				+ "albumItem.is_active, "
				+ "albumItem.is_image, "
				+ "albumItem.created_date, "
				+ "albumItem.updated_date, "

				+ "album.album_title"

				+" from " + DatabaseTables.TABLE_NAME_GALLERY_ALBUM_DATA+ " albumItem"

				+ " LEFT JOIN "+ DatabaseTables.TABLE_NAME_GALLERY_ALBUM + " album ON "
				+ "albumItem.album_id="+"album.album_id";


		String whereClause = " where albumItem.album_id= "+albumId + " && albumItem.is_image = "+isImage;

		if(status <= 1) {
			whereClause = whereClause + " && albumItem.is_active= "+status;
		}

		String orderClause = " ORDER BY albumItem.image_id DESC";
		String pagination = " limit "+startOffset+","+ maxRowCount;

		sql = sql + whereClause+orderClause+pagination;

		try {

			RowMapper<AlbumItemModel> rowMapper = new RowMapper<AlbumItemModel>() {
				@Override
				public AlbumItemModel mapRow(ResultSet rs, int rowNum) throws SQLException {

					AlbumItemModel mi = new AlbumItemModel();
					mi.setId(rs.getInt(1));
					mi.setAlbumId(rs.getInt(2));
					mi.setTitle(rs.getString(3));
					mi.setUrl(rs.getString(4));

					if(!Utils.isEmpty(mi.getUrl())) {
						mi.setUrl(Utils.imagePathFormation(mi.getUrl()));
					}
					mi.setIsActive(rs.getInt(5));
					mi.setIsImage(rs.getInt(6));
					mi.setCreatedDate(rs.getString(7));
					mi.setUpdatedDate(rs.getString(8));

					mi.setAlbumTitle(rs.getString(9));


					return mi;
				}
			};
			list = (ArrayList<AlbumItemModel>) jdbcTemplate.query(sql, rowMapper);

		} catch (Exception e) {
			DebugLog.print("GalleryAlbumDataHelper::getAlbumItemList::Exception: " + e, true);
		}
		return list;
	}


	/*
	 * Get Album item count
	 */

	public static int getAlbumItemCount(int albumId, int isImage, int status, JdbcTemplate jdbcTemplate) {


		int count = 0;

		String sql = "select "+"COUNT(image_id) AS NumberOfProducts"
				+" from " + DatabaseTables.TABLE_NAME_GALLERY_ALBUM_DATA;


		String whereClause = " where album_id= "+albumId + " && is_image = "+isImage;

		if(status <= 1) {
			whereClause = whereClause + " && is_active= "+status;
		}

		String orderClause = "";
		String pagination = "";

		sql = sql + whereClause+orderClause+pagination;

		try {

			RowMapper<String> rowMapper = new RowMapper<String>() {
				@Override
				public String mapRow(ResultSet rs, int rowNum) throws SQLException {

					return String.valueOf(rs.getInt(1));
				}
			};
			String mi = jdbcTemplate.queryForObject(sql, rowMapper);

			if(!Utils.isEmpty(mi)) {
				count = Integer.parseInt(mi);
			}

		} catch (Exception e) {
			DebugLog.print("GalleryAlbumDataHelper::getAlbumItemCount::Exception: " + e, true);
		}
		return count;
	}

	/**
	 * Create Album item
	 * @param mi
	 * @return
	 */

	public int createAlbumItem(
			AlbumItemModel pi, int createdBy, JdbcTemplate jdbcTemplate) {


		int result = 0;
		try {
			String updateAt = Utils.getUpdatedAtStamp();

			// the mysql insert statement
			String query = "insert into " + DatabaseTables.TABLE_NAME_GALLERY_ALBUM_DATA
					+ " (album_id, title, url, is_image, is_active, created_by, updated_by, updated_date, created_date)"
					+ " values (?, ?, ?, ?, ?, ?, ?, ?, ?)";


			jdbcTemplate.update(query,
			        new Object[] {
			    			pi.getAlbumId(),
			    			pi.getTitle(),
			    			pi.getUrl(),
			    			pi.getIsImage(),
			    			pi.getIsActive(),
			    			createdBy,
			    			createdBy,
			    			updateAt,
			    			updateAt
			        		});
			
			result = 1;

		} catch (Exception e) {
			Constants.addLog("GalleryAlbumDataHelper::createAlbumItem::Exception:  = "+e);
			DebugLog.print("GalleryAlbumDataHelper::createAlbumItem::Exception: " + e, true);
		}

		return result;
	}


	/**
	 * Update Album
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateAlbumItem(AlbumItemModel pi, int updatedBy, boolean isFromCreate, JdbcTemplate jdbcTemplate) {

		if (pi == null) {
			return false;
		}


		boolean result = false;

		try {
			// the mysql update statement
			String updatedAt = Utils.getUpdatedAtStamp();
			String query = "";
			if(isFromCreate) {
				query = "update " + DatabaseTables.TABLE_NAME_GALLERY_ALBUM_DATA
						+ " set image_id = ?"
						+ ", updated_by = ?"

						+ ", updated_date = ?"
						+ ", url = ?"
						+ ", title = ?"
						;

				String whereClause = " where image_id = ?";
				query = query+whereClause;

				jdbcTemplate.update(query,
				        new Object[] {
				        		pi.getId(),
								updatedBy,
								updatedAt,
								pi.getUrl(),
								pi.getTitle(),
								pi.getId()
				        		});

			}else {
				query = "update " + DatabaseTables.TABLE_NAME_GALLERY_ALBUM_DATA
						+ " set image_id = ?"
						+ ", updated_by = ?"

						+ ", updated_date = ?"
						+ ", title = ?"
						;

				String whereClause = " where image_id = ?";
				query = query+whereClause;

				jdbcTemplate.update(query,
				        new Object[] {
				        		pi.getId(),
								updatedBy,
								updatedAt,
								pi.getTitle(),
								pi.getId()
				        		});
			}

			result = true;

		} catch (Exception e) {
			DebugLog.print("GalleryAlbumDataHelper::updateAlbumItem::Exception: " + e, true);
			//Constants.addLog("GalleryAlbumDataHelper::updateAlbumItem::Exception: " + e);
		}

		return result;
	}

	/**
	 * Update Dairy item status
	 *
	 * @param mi
	 * @return
	 */

	public boolean updateAlbumItemStatus(int id, int status, JdbcTemplate jdbcTemplate) {

		if (id ==0) {
			return false;
		}


		boolean result = false;

		try {
			String query = "update " + DatabaseTables.TABLE_NAME_GALLERY_ALBUM_DATA
					+ " set is_active = ?"
					;

			String whereClause = " where image_id = ?";
			query = query+whereClause;

			jdbcTemplate.update(query,
			        new Object[] {
			        		status, id
			        		});
			result = true;

		} catch (Exception e) {
			DebugLog.print("GalleryAlbumDataHelper::updateAlbumItemStatus::Exception: " + e, true);
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
			String query = "Delete from " + DatabaseTables.TABLE_NAME_GALLERY_ALBUM_DATA + " where image_id in ('"+ ids+"')";

			jdbcTemplate.update(query,
			        new Object[] {
			        		});
			result = true;

		} catch (Exception e) {
			DebugLog.print("GalleryAlbumDataHelper::deleteItems::Exception: " + e, true);
		}

		return result;
	}

	/**
	 * delete Album items"
	 *
	 * @param mi
	 * @return
	 */

	public boolean deleteAllItems(int albumId, JdbcTemplate jdbcTemplate) {

		if (albumId <= 0) {
			return false;
		}


		boolean result = false;

		try {
			String query = "Delete from " + DatabaseTables.TABLE_NAME_GALLERY_ALBUM_DATA + " where album_id = ?";

			jdbcTemplate.update(query,
			        new Object[] {
			        		albumId
			        		});
			result = true;

		} catch (Exception e) {
			DebugLog.print("GalleryAlbumDataHelper::deleteAllItems::Exception: " + e, true);
		}

		return result;
	}
}







