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
import com.mindsmap.sanklap.database.helper.HomeWorkHelper;
import com.mindsmap.sanklap.models.HomeWorkModel;

@CrossOrigin
@RestController
@RequestMapping("/api/homework")
public class HomeWorkController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private HomeWorkHelper dbHelper = new HomeWorkHelper();

	/*
	 * get home work list
	 */

	@GetMapping("/getHomeWorkList")
	public ResponseEntity<String> getHomeWorkList(@RequestParam("batchId") int batchId,
			@RequestParam("page") int page) {

		JSONObject response = new JSONObject();

		ArrayList<HomeWorkModel> result =  dbHelper.getHomeWorkList(batchId, page, jdbcTemplate);

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
			DebugLog.print("HomeWorkController::getHomeWorkList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * create Home work
	 */

	@PostMapping("/createHomeWork")
	public ResponseEntity<String> createHomeWork(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		HomeWorkModel pi = new HomeWorkModel();


		pi.setBatchId(jObj.getInt("batchId"));
		pi.setStandardId(jObj.getInt("standardId"));
		pi.setDate(jObj.getString("homeWorkDate"));
		pi.setCreatedBy(jObj.getInt("createdBy"));
		pi.setTitle(jObj.getString("title"));
		pi.setDescription(jObj.getString("description"));
		pi.setRemarks(jObj.getString("remarks"));


		int resultId = dbHelper.createHomeWork(pi, jdbcTemplate);

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
			DebugLog.print("HomeWorkController::createStudentFee::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/*
	 * update home work
	 */

	@PostMapping("/updateHomeWorkDetail")
	public ResponseEntity<String> updateHomeWorkDetail(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		HomeWorkModel pi = new HomeWorkModel();

		pi.setId(jObj.getInt("id"));
		pi.setBatchId(jObj.getInt("batchId"));
		pi.setStandardId(jObj.getInt("standardId"));
		pi.setDate(jObj.getString("homeWorkDate"));
		pi.setUpdatedBy(jObj.getInt("updatedBy"));
		pi.setTitle(jObj.getString("title"));
		pi.setDescription(jObj.getString("description"));
		pi.setRemarks(jObj.getString("remarks"));


		boolean result = dbHelper.updateHomeWork(pi, jdbcTemplate);

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
			DebugLog.print("HomeWorkController::updateHomeWorkDetail::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/**
	 * update home Work status
	 */
	@GetMapping("/updateHomeWorkStatus")
	public ResponseEntity<String> updateHomeWorkStatus(@RequestParam("homeWorkId") int homeWorkId,
			@RequestParam("isActive") int isActive) {


		boolean result = dbHelper.updateHomeWorkStatus(homeWorkId,  isActive, jdbcTemplate);

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
			DebugLog.print("HomeWorkController::updateHomeWorkStatus::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/**
	 * Delete home Work
	 */
	@PostMapping("/deleteHomeWorkItems")
	public ResponseEntity<String> deleteHomeWorkItems(@RequestBody String postData) {

		JSONObject obj = new JSONObject(postData);

		String ids = obj.getString("ids");

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
			DebugLog.print("HomeWorkController::deleteHomeWorkItems::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}


}



