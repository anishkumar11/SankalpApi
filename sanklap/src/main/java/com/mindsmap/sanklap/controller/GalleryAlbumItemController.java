package com.mindsmap.sanklap.controller;

import java.io.File;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Arrays;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
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
import com.mindsmap.sanklap.models.AlbumItemModel;

@CrossOrigin
@RestController
@RequestMapping("/api/albumitems")
public class GalleryAlbumItemController {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	private GalleryAlbumDataHelper dbHelper = new GalleryAlbumDataHelper();
	
	/*
	 * get Album Items List of batch
	 */
	
	@GetMapping("/getAlbumItemList")
	public ResponseEntity<String> getAlbumItemList(
			@RequestParam("albumId") int albumId,
			@RequestParam("isImage") int isImage,
			@RequestParam("isActive") int status,
			@RequestParam("page") int page) {
		
		JSONObject response = new JSONObject();
		
		ArrayList<AlbumItemModel> result =  dbHelper.getAlbumItemList(albumId, isImage, status, page, jdbcTemplate);
		
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
			DebugLog.print("GalleryAlbumItemController::getAlbumItemList::Exception: " + e, false);
		}
		
		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);
        
		return new ResponseEntity<>(response.toString(), responseCode);
	}
	
	/*
	 * create Album
	 */
	
	
	@PostMapping("/createAlbumItemLink")
	public ResponseEntity<String> createAlbumItemLink(@RequestBody String postData) {
		
		Constants.clearLog();
		
		JSONObject jObj = new JSONObject(postData);
		
		AlbumItemModel pi = new AlbumItemModel();
		
		//, title, url, is_image
		pi.setAlbumId(jObj.getInt("albumId"));
		pi.setTitle(jObj.getString("title"));
		pi.setIsImage(jObj.getInt("isImage"));
		try {
			pi.setUrl(jObj.getString("url"));	
		}catch(Exception e) {
			Constants.addLog("Exception_1 = "+e);
		}
		
		int createdBy = jObj.getInt("createdBy");
		
		int resultId = dbHelper.createAlbumItem(pi, createdBy, jdbcTemplate);
		
		JSONObject resObj = new JSONObject();
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;
		try {
			responseCode = HttpStatus.OK;
			if(resultId <= 0 ) {
				resObj.put("statusCode", 400);
				resObj.put("message", Constants.log);
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
			DebugLog.print("GalleryAlbumItemController::createAlbumItem::Exception = "+e, true);
			Constants.addLog("Exception_ = "+e);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}
	
	@RequestMapping(value = "/createAlbumItemImage", method = RequestMethod.POST, consumes = { "multipart/form-data" })
	public ResponseEntity<String> createAlbumItemImage(@RequestPart("postData") String postData,
			@RequestPart("files") MultipartFile[] files) {
		
		Constants.clearLog();

		
		JSONObject jObj = new JSONObject(postData);
		
		AlbumItemModel pi = new AlbumItemModel();
		
		//, title, url, is_image
		int branchId = jObj.getInt("branchId");
		int batchId = jObj.getInt("batchId");
		pi.setAlbumId(jObj.getInt("albumId"));
		pi.setTitle(jObj.getString("title"));
		pi.setIsImage(jObj.getInt("isImage"));
		try {
			pi.setUrl(jObj.getString("url"));	
		}catch(Exception e) {
			Constants.addLog("Exception_1 = "+e);
		}
		
		//Constants.addLog("postData = "+postData);
		//Constants.addLog("files = "+files); 
		
		int createdBy = jObj.getInt("createdBy");
		
		ArrayList<String> result = new ArrayList<String>();
		if(files != null){
			
			Arrays.asList(files).stream().forEach(file -> {
			    
				/*int resultId1 = dbHelper.createAlbumItem(pi, createdBy, jdbcTemplate);
				result.add(""+resultId1);
				//Constants.addLog("resultId1 ="+resultId1);
				DebugLog.print("resultId1 ="+resultId1, false);*/
				
				if(file != null) {
					try {
						
						String filePath = writeToFile(file.getInputStream(),
								branchId, 
								batchId,	
								pi.getAlbumId(), 
								file.getOriginalFilename());
						
						DebugLog.print("filePath = " + filePath, false);
						try {
							filePath = new File(filePath).toURI().toURL().getPath();
							int index = filePath.indexOf(Constants.appFolder);
							if(index >=0) {
								filePath = filePath.substring(index);
							}
						}catch(Exception e) {
							DebugLog.print("Exception_1 = " + e, false);
						}
						
						//pi.setId(resultId1);
						pi.setUrl(filePath);
						//dbHelper.updateAlbumItem(pi, createdBy, true, jdbcTemplate);
						int resultId1 = dbHelper.createAlbumItem(pi, createdBy, jdbcTemplate);
						result.add(""+resultId1);
						//Constants.addLog("resultId1 ="+resultId1);
						DebugLog.print("resultId1 ="+resultId1, false);
						//Constants.clearLog();
						//Constants.addLog("filePath = "+filePath);
					}catch(Exception e) {
						//Constants.addLog("Exception_2 = "+e);
					}
				}
				
		      });
		}
		
		
		JSONObject resObj = new JSONObject();
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;
		try {
			responseCode = HttpStatus.OK;
			if(result.isEmpty() ) {
				resObj.put("statusCode", 400);
				resObj.put("message", "error");
			}else {
				String msg = "Success";
				int statusCode = 200;
				statusCode = 200;
				responseCode = HttpStatus.OK;
				
				resObj.put("data", result.toArray());
				resObj.put("message", "success");
				resObj.put("statusCode", statusCode);
			}
		}catch(Exception e) {
			DebugLog.print("GalleryAlbumItemController::createAlbumItem::Exception = "+e, true);
			Constants.addLog("Exception_ = "+e);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}
	
	/*
	 * update Album
	 */
	
	@PostMapping("/updateAlbumItem")
	public ResponseEntity<String> updateAlbumItem(@RequestBody String postData) {
		
		JSONObject jObj = new JSONObject(postData);
		
		AlbumItemModel pi = new AlbumItemModel();
	
		pi.setId(jObj.getInt("id"));
		pi.setTitle(jObj.getString("title"));
		pi.setUrl(jObj.getString("url"));
		int updatedBy = jObj.getInt("updatedBy");
		
		boolean result = dbHelper.updateAlbumItem(pi, updatedBy, false, jdbcTemplate);
		
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
			DebugLog.print("GalleryAlbumItemController::updateAlbumItem::Exception = "+e, true);	
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}
	
	/**
	 * update Album status
	 */
	@GetMapping("/updateAlbumItemStatus")
	public ResponseEntity<String> updateAlbumItemStatus(@RequestParam("id") int id, 
			@RequestParam("isActive") int isActive) {
		
		
		boolean result = dbHelper.updateAlbumItemStatus(id,  isActive, jdbcTemplate);
		
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
			DebugLog.print("GalleryAlbumItemController::updateAlbumItemStatus::Exception = "+e, true);	
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}
	
	
	/**
	 * Delete Album items
	 */
	@PostMapping("/deleteItems")
	public ResponseEntity<String> deleteItems(@RequestBody String postData) {	
		
		JSONObject obj = new JSONObject(postData);
		
		String ids = obj.getString("ids");
		String[] filePaths = obj.getString("filePaths").split(",");
		
		for(int i = 0;  i < filePaths.length; i++) {
			this.deletePath(filePaths[i]);		
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
			DebugLog.print("GalleryAlbumItemController::deleteItems::Exception = "+e, true);	
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}
	
	// save uploaded file to new location
	private String writeToFile(InputStream uploadedInputStream,
		int branchId, 
		int batchId, int albumId, String fileName) {
		
		Constants.addLog("****writeToFile = ");
		String uploadedFileLocation = "";
		try {
			
			String ROOT_FOLDDER = Utils.getRootFolder();
			
			String dirPath = ROOT_FOLDDER+Constants.galleryPath+Constants.BRANCHES;
			dirPath = dirPath+branchId+File.separator+batchId+File.separator+albumId+File.separator;
			DebugLog.print("dirPath = " + dirPath, false);
			createDirPath(dirPath);
			
			int index = fileName.lastIndexOf(".");
			if(index >=0) {
				fileName = System.currentTimeMillis()+fileName.substring(index);
			}
			uploadedFileLocation =  dirPath + fileName;
			Constants.addLog("writeToFile::uploadedFileLocation = "+uploadedFileLocation);
			// save it
			Files.copy(uploadedInputStream, Paths.get(uploadedFileLocation), StandardCopyOption.REPLACE_EXISTING);
			
			index = uploadedFileLocation.indexOf(ROOT_FOLDDER);
			if(index >=0) {
				uploadedFileLocation = uploadedFileLocation.substring(index+ROOT_FOLDDER.length());
			}
			
		}catch (Exception e) {
			DebugLog.print("WriteToFile::Exception = " + e, false);
			uploadedFileLocation = "";
			Constants.addLog("WriteToFile::Exception =  = "+e);
		}
		Constants.addLog("WriteToFile::uploadedFileLocation =  = "+uploadedFileLocation);
		return uploadedFileLocation; 
	}

	
	private void createDirPath(String dirPath) {
		try {
			File file = new File(dirPath);
			if(!file.exists()) {
				file.mkdirs();
			}
		}catch(Exception e) {
			Constants.addLog("createDirPath::Exception = "+e);
		}
	}
	
	private void deletePath(String filePath) {
		try {
			String ROOT_FOLDDER = Utils.getRootFolder();

			String path = Path.of(filePath).toString();
			
			String dirPath = ROOT_FOLDDER+path;
			//DebugLog.print("deletePath::dirPath = "+ dirPath, false);
			
			File file = new File(dirPath);
			if(file.exists()) {
				Files.delete(Paths.get(dirPath));
			}
		}catch(Exception e) {
			Constants.addLog("deletePath::Exception = "+e);
		}
	}

}



