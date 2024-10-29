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
import com.mindsmap.sanklap.database.helper.AttendanceHelper;
import com.mindsmap.sanklap.database.helper.BatchHelper;
import com.mindsmap.sanklap.models.BatchModel;
import com.mindsmap.sanklap.models.BatchStudentModel;


@CrossOrigin
@RestController
@RequestMapping("/api/batch")
public class BatchController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private BatchHelper dbHelper = new BatchHelper();

	/*
	 * get Branch Standard list
	 */

	@GetMapping("/getBatchList")
	public ResponseEntity<String> getBatchList(@RequestParam("branchId") int branchId,
			@RequestParam("standardId") int standardId) {

		JSONObject response = new JSONObject();

		ArrayList<BatchModel> result =  dbHelper.getBatchList(branchId, standardId, jdbcTemplate);

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
			DebugLog.print("BatchController::getBatchList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}


	/*
	 * get overall Attendance
	 */

	@GetMapping("/getBatchDetail")
	public ResponseEntity<String> getBatchDetail(@RequestParam("studentId") int studentId) {

		JSONObject response = new JSONObject();

		BatchStudentModel batchStudent = new AttendanceHelper().getBatchStudent(studentId, jdbcTemplate);


		String msg = "Fail";
		int statusCode = 400;
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;

		if(batchStudent != null && batchStudent.getBatchStudentId() > 0) {

			BatchModel result =  dbHelper.getBatchDetail(batchStudent.getBatchId(), null);


			if(result != null) {
				msg = "Success";
				statusCode = 200;
				responseCode = HttpStatus.OK;

			}

			ObjectMapper objectMapper = new ObjectMapper();
		    String jsonArray = "{}";
			try {
				jsonArray = objectMapper.writeValueAsString(result);
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				DebugLog.print("BatchController::getAttendanceList::Exception: " + e, false);
			}

			response.put("data", new JSONObject(jsonArray));
		}

		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}


	/*
	 * create Batch
	 */

	@PostMapping("/createBatch")
	public ResponseEntity<String> createBatch(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		BatchModel pi = new BatchModel();


		pi.setBranchId(jObj.getInt("branchId"));
		pi.setStandardId(jObj.getInt("standardId"));
		int createBy = jObj.getInt("createdBy");
		pi.setBatchName(jObj.getString("batchName"));

		pi.setTeacherId(jObj.getInt("teacherId"));
		pi.setBatchStartDate(jObj.getString("batchStartDate"));
		pi.setBatchEndDate(jObj.getString("batchEndDate"));


		int attendanceId = dbHelper.createBatch(pi, createBy, jdbcTemplate);

		JSONObject resObj = new JSONObject();
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;
		try {
			responseCode = HttpStatus.OK;
			if(attendanceId <= 0 ) {
				resObj.put("statusCode", 400);
				resObj.put("message", "error");
			}else {
				String msg = "Success";
				int statusCode = 200;
				statusCode = 200;
				responseCode = HttpStatus.OK;

				resObj.put("data", attendanceId);
				resObj.put("message", msg);
				resObj.put("statusCode", statusCode);
			}
		}catch(Exception e) {
			DebugLog.print("FeeController::createStudentFee::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/*
	 * update Teacher detail
	 */

	@PostMapping("/updateBatchDetail")
	public ResponseEntity<String> updateBatchDetail(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		BatchModel pi = new BatchModel();

		pi.setId(jObj.getInt("id"));
		pi.setBranchId(jObj.getInt("branchId"));
		pi.setStandardId(jObj.getInt("standardId"));
		int updateBy = jObj.getInt("createdBy");
		pi.setBatchName(jObj.getString("batchName"));

		pi.setTeacherId(jObj.getInt("teacherId"));
		pi.setBatchStartDate(jObj.getString("batchStartDate"));
		pi.setBatchEndDate(jObj.getString("batchEndDate"));


		boolean result = dbHelper.updateBatch(pi, updateBy, jdbcTemplate);

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
			DebugLog.print("FeeController::updateStudentFee::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/**
	 * update batch status
	 */
	@GetMapping("/updateBatchStatus")
	public ResponseEntity<String> updateBatchStatus(@RequestParam("batchId") int batchId,
			@RequestParam("isActive") int isActive) {


		boolean result = dbHelper.updateBatchActiveStatus(batchId,  isActive, jdbcTemplate);

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
			DebugLog.print("FeeController::updateBatchStatus::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}


}

