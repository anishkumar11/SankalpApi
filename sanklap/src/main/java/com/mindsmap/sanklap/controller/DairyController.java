package com.mindsmap.sanklap.controller;

import java.util.ArrayList;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.helper.DairyHelper;
import com.mindsmap.sanklap.models.DairyModel;
import com.mindsmap.sanklap.models.HomeWorkModel;

@CrossOrigin
@RestController
@RequestMapping("/api/dairy")
public class DairyController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private DairyHelper dbHelper = new DairyHelper();

	/*
	 * get Dairy List of batch
	 */

	@GetMapping("/getDiaryItemList")
	public ResponseEntity<String> getDiaryItemList(@RequestParam("batchId") int batchId,
			@RequestParam("isActive") int status,
			@RequestParam("page") int page) {

		JSONObject response = new JSONObject();

		ArrayList<DairyModel> result =  dbHelper.getDairyItemList(batchId, status, page, jdbcTemplate);

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
			DebugLog.print("DairyController::getDiaryItemList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * create Dairy Item
	 */

	@PostMapping("/createDaiyItem")
	public ResponseEntity<String> createDaiyItem(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		DairyModel pi = new DairyModel();

		pi.setBatchId(jObj.getInt("batchId"));
		pi.setStandardId(jObj.getInt("standardId"));
		pi.setBranchId(jObj.getInt("branchId"));
		pi.setDate(jObj.getString("date"));

		pi.setTitle(jObj.getString("title"));
		pi.setDescription(jObj.getString("description"));
		pi.setImageUrl(jObj.getString("imageUrl"));
		int createdBy = jObj.getInt("createdBy");

		int resultId = dbHelper.createDiaryItem(pi, createdBy, jdbcTemplate);

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
			DebugLog.print("DairyController::createDaiyItem::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/*
	 * update Dairy Item
	 */

	@PostMapping("/updateDaiyItem")
	public ResponseEntity<String> updateDaiyItem(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		DairyModel pi = new DairyModel();

		pi.setId(jObj.getInt("id"));
		pi.setBatchId(jObj.getInt("batchId"));
		pi.setStandardId(jObj.getInt("standardId"));
		pi.setBranchId(jObj.getInt("branchId"));
		pi.setDate(jObj.getString("date"));

		pi.setTitle(jObj.getString("title"));
		pi.setDescription(jObj.getString("description"));
		pi.setImageUrl(jObj.getString("imageUrl"));

		int updatedBy = jObj.getInt("updatedBy");

		boolean result = dbHelper.updateDaiyItem(pi, updatedBy, jdbcTemplate);

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
			DebugLog.print("DairyController::updateDaiyItem::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/**
	 * update Dairy Item status
	 */
	@GetMapping("/updateDairyItemStatus")
	public ResponseEntity<String> updateDairyItemStatus(@RequestParam("dairyId") int dairyId,
			@RequestParam("isActive") int isActive) {


		boolean result = dbHelper.updateDairyItemStatus(dairyId,  isActive, jdbcTemplate);

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
			DebugLog.print("DairyController::updateDairyItemStatus::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}


}



