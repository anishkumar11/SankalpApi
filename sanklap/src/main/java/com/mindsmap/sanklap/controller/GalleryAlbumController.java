package com.mindsmap.sanklap.controller;

import java.io.File;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mindsmap.sanklap.core.Constants;
import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.helper.GalleryAlbumDataHelper;
import com.mindsmap.sanklap.database.helper.GalleryAlbumHelper;
import com.mindsmap.sanklap.models.AlbumModel;

@CrossOrigin
@RestController
@RequestMapping("/api/album")
public class GalleryAlbumController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private GalleryAlbumHelper dbHelper = new GalleryAlbumHelper();

	/*
	 * get Dairy List of batch
	 */

	@GetMapping("/getAlbumList")
	public ResponseEntity<String> getAlbumList(
			@RequestParam("branchId") int branchId,
			@RequestParam("batchId") int batchId,
			@RequestParam("isActive") int status,
			@RequestParam("page") int page) {

		JSONObject response = new JSONObject();

		ArrayList<AlbumModel> result =  dbHelper.getAlbumList(branchId, batchId, status, page, jdbcTemplate);

		String msg = "Fail";
		int statusCode = 400;
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;
		if(result != null) {
			msg = "Success";
			statusCode = 200;
			responseCode = HttpStatus.OK;

		}

		ObjectMapper objectMapper = new ObjectMapper();
	    String jsonArray = "[]";
		try {
			jsonArray = objectMapper.writeValueAsString(result);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			DebugLog.print("GalleryAlbumController::getAlbumList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * create Album
	 */

	@RequestMapping(value = "/createAlbum", method = RequestMethod.POST, consumes = { "multipart/form-data" })
	public ResponseEntity<String> createAlbum(@RequestPart("postData") String postData,
			@RequestPart(name = "files", required = false) MultipartFile[] files) {

		JSONObject jObj = new JSONObject(postData);

		AlbumModel pi = new AlbumModel();

		pi.setBatchId(jObj.getInt("batchId"));
		pi.setBranchId(jObj.getInt("branchId"));
		pi.setDate(jObj.getString("date"));

		pi.setTitle(jObj.getString("title"));

		int createdBy = jObj.getInt("createdBy");

		int resultId = dbHelper.createAlbum(pi, createdBy, jdbcTemplate);


		if(resultId > 0 && files != null && files.length > 0) {
			try {
				MultipartFile file = files[0];
				String filePath = writeToFile(file.getInputStream(),
						pi.getBatchId(),
						pi.getBranchId(),
						resultId,
						file.getOriginalFilename());

				try {
					filePath = new File(filePath).toURI().toURL().getPath();
					DebugLog.print("filePath = " + filePath, false);
					int index = filePath.indexOf(Constants.appFolder);
					if(index >=0) {
						filePath = filePath.substring(index);
					}
					DebugLog.print("filePath = " + filePath, false);
				}catch(Exception e) {
					DebugLog.print("Exception_1 = " + e, false);
				}


				pi.setId(resultId);
				pi.setThumbnail(filePath);
				DebugLog.print("pi.getThumbnail() = " + pi.getThumbnail(), false);
				dbHelper.updateAlbum(pi, createdBy, true, jdbcTemplate);
			}catch(Exception e) {}
		}

		JSONObject resObj = new JSONObject();
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;
		try {
			responseCode = HttpStatus.OK;
			if(resultId <= 0 ) {
				resObj.put("statusCode", 400);
				resObj.put("message", "error");
			}else {
				String msg = "Success";
				int statusCode = 200;
				statusCode = 200;
				responseCode = HttpStatus.OK;

				resObj.put("data", resultId);
				resObj.put("message", msg);
				resObj.put("statusCode", statusCode);
			}
		}catch(Exception e) {
			DebugLog.print("GalleryAlbumController::createAlbum::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/*
	 * update Album
	 */

	@RequestMapping(value = "/updateAlbum", method = RequestMethod.POST, consumes = { "multipart/form-data" })
	public ResponseEntity<String> updateAlbum(@RequestPart("postData") String postData,
			@RequestPart(name = "file", required = false) MultipartFile file) {

		JSONObject jObj = new JSONObject(postData);

		AlbumModel pi = new AlbumModel();

		pi.setId(jObj.getInt("id"));
		pi.setBatchId(jObj.getInt("batchId"));
		pi.setBranchId(jObj.getInt("branchId"));
		pi.setDate(jObj.getString("date"));

		pi.setTitle(jObj.getString("title"));
		pi.setThumbnail(jObj.getString("imageUrl"));

		int updatedBy = jObj.getInt("updatedBy");
		boolean isCoverImageUpdate = false;

		try {
			if(file != null) {
				String filePath = writeToFile(file.getInputStream(),
						pi.getBatchId(),
						pi.getBranchId(),
						pi.getId(),
						file.getOriginalFilename());

				try {
					filePath = new File(filePath).toURI().toURL().getPath();
					int index = filePath.indexOf(Constants.appFolder);
					if(index >=0) {
						filePath = filePath.substring(index);
					}
				}catch(Exception e) {}

				pi.setThumbnail(filePath);
				isCoverImageUpdate = true;
			}

		}catch(Exception e) {}

		boolean result = dbHelper.updateAlbum(pi, updatedBy, isCoverImageUpdate, jdbcTemplate);

		JSONObject resObj = new JSONObject();
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;
		try {
			responseCode = HttpStatus.OK;
			if(!result) {
				resObj.put("statusCode", 400);
				resObj.put("message", "error");
			}else {
				String msg = "Success";
				responseCode = HttpStatus.OK;
				resObj = Utils.getSuccessResponse("message", msg);

			}
		}catch(Exception e) {
			DebugLog.print("GalleryAlbumController::updateAlbum::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/**
	 * update Album status
	 */
	@GetMapping("/updateAlbumStatus")
	public ResponseEntity<String> updateAlbumStatus(@RequestParam("albumId") int albumId,
			@RequestParam("isActive") int isActive) {


		boolean result = dbHelper.updateAlbumStatus(albumId,  isActive, jdbcTemplate);

		JSONObject resObj = new JSONObject();
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;
		try {
			responseCode = HttpStatus.OK;
			if(!result) {
				resObj.put("statusCode", 400);
				resObj.put("message", "error");
			}else {
				String msg = "Success";
				responseCode = HttpStatus.OK;
				resObj = Utils.getSuccessResponse("message", msg);

			}
		}catch(Exception e) {
			DebugLog.print("GalleryAlbumController::updateAlbumStatus::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}


	/**
	 * Delete albums
	 */
	@PostMapping("/deleteAlbums")
	public ResponseEntity<String> deleteAlbums(@RequestBody String postData) {

		JSONObject obj = new JSONObject(postData);

		String ids = obj.getString("albumIds");
		String[] albumIds = ids.split(",");
		String[] batchIds = obj.getString("batchIds").split(",");
		String[] branchIds = obj.getString("branchIds").split(",");

		GalleryAlbumDataHelper albumItemHelper = new GalleryAlbumDataHelper();
		for(int i = 0; i < albumIds.length; i++) {
			deleteAlbum(batchIds[i], branchIds[i], albumIds[i]);
			albumItemHelper.deleteAllItems(Integer.parseInt(albumIds[i]), jdbcTemplate);
		}

		boolean result = dbHelper.deleteItems(ids, jdbcTemplate);


		JSONObject resObj = new JSONObject();
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;
		try {
			responseCode = HttpStatus.OK;
			if(!result) {
				resObj.put("statusCode", 400);
				resObj.put("message", "error");
			}else {
				String msg = "Success";
				responseCode = HttpStatus.OK;
				resObj = Utils.getSuccessResponse("message", msg);

			}
		}catch(Exception e) {
			DebugLog.print("HomeWorkController::deleteAlbums::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	// save uploaded file to new location
	private String writeToFile(InputStream uploadedInputStream,
			int batchId,
			int branchId,
			int albumId, String fileName) {

		String uploadedFileLocation = "";
		try {

			String ROOT_FOLDDER = Utils.getRootFolder();

			String dirPath = ROOT_FOLDDER+Constants.galleryPath+Constants.BRANCHES;
			dirPath = dirPath+branchId+File.separator+batchId+File.separator+albumId+File.separator;

			int index = fileName.lastIndexOf(".");
			if(index >=0) {
				fileName = "cover"+fileName.substring(index);
			}
			DebugLog.print("CreateAlbum::fileName_2= " + fileName, false);
			uploadedFileLocation =  dirPath + fileName;
			DebugLog.print("CreateAlbum::uploadedFileLocation= " + uploadedFileLocation, false);

			// save it
			createDirPath(dirPath);
			deleteFile(dirPath);

			Files.copy(uploadedInputStream, Paths.get(uploadedFileLocation));

			index = uploadedFileLocation.indexOf(ROOT_FOLDDER);
			if(index >=0) {
				uploadedFileLocation = uploadedFileLocation.substring(index+ROOT_FOLDDER.length());
			}

		}catch (Exception e) {
			DebugLog.print("WriteToFile::Exception = " + e, false);
			uploadedFileLocation = "";
		}

		return uploadedFileLocation;
	}

	private void deleteFile(String path) {
		try {
			File file = new File(path);
			if(file.exists() && file.isDirectory() ) {
				File[] list = file.listFiles();
				for(int i = 0; i < list.length; i++) {
					if(list[i].getName().toLowerCase().indexOf("cover") >=0) {
						try {
							list[i].delete();
						}catch(Exception e) {
							DebugLog.print("deleteFile::Exception_"+i+" = " + e, false);
						}
					}
				}
			}
		}catch(Exception e) {
		}
	}

	private void createDirPath(String dirPath) {
		try {
			File file = new File(dirPath);
			if(!file.exists()) {
				file.mkdirs();
			}
		}catch(Exception e) {

		}
	}

	private void deleteAlbum(String batchId, String branchId, String albumId) {
		try {

			String ROOT_FOLDDER = Utils.getRootFolder();

			String dirPath = ROOT_FOLDDER+Constants.galleryPath+Constants.BRANCHES;
			dirPath = dirPath+branchId+File.separator+batchId+File.separator+albumId+File.separator;

			File file = new File(dirPath);
			if(file.exists() && file.isDirectory() ) {
				File[] list = file.listFiles();
				for(int i = 0; i < list.length; i++) {
					try {
						list[i].delete();
					}catch(Exception e) {
						DebugLog.print("deleteAlbum::Exception_"+i+" = " + e, false);
					}
				}
				deleteAblumDir(dirPath);
			}

		}catch(Exception e) {
			Constants.addLog("deleteAlbum::Exception = "+e);
		}
	}

	private void deleteAblumDir(String filePath) {
		try {

			File file = new File(filePath);
			if(file.exists() && file.isDirectory()) {
				Files.delete(Paths.get(filePath));
			}

		}catch(Exception e) {
			Constants.addLog("deletePath::Exception = "+e);
		}
	}

}



