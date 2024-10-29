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
import com.mindsmap.sanklap.database.helper.BatchStudentHelper;
import com.mindsmap.sanklap.database.helper.RegisterHelper;
import com.mindsmap.sanklap.models.BatchStudentModel;
import com.mindsmap.sanklap.models.StudentModel;


@CrossOrigin
@RestController
@RequestMapping("/api/batch")
public class BatchStudentController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private BatchStudentHelper dbHelper = new BatchStudentHelper();

	/*
	 * get Branch Standard list
	 */

	@GetMapping("/getBatchStudentList")
	public ResponseEntity<String> getBatchStudentList(@RequestParam("batchId") int batchId) {

		JSONObject response = new JSONObject();

		ArrayList<BatchStudentModel> result =  dbHelper.getBatchStudentList(batchId, jdbcTemplate);

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
			DebugLog.print("BatchStudentController::getBatchList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}



	/*
	 * create Batch Student
	 */

	@PostMapping("/createBatchStudent")
	public ResponseEntity<String> createBatchStudent(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);


		int studentId = 0;

		StudentModel si = new StudentModel();
		si.setRegNo(jObj.getString("studentRegNo"));

		ArrayList<StudentModel> list = new RegisterHelper().getStudentList(si, jdbcTemplate);

		int resultId = 0;
		if(!list.isEmpty()) {
			studentId = list.get(0).getId();
			if(studentId > 0) {
				BatchStudentModel pi = new BatchStudentModel();
				pi.setBatchId(jObj.getInt("batchId"));
				pi.setStudentId(studentId);

				int createBy = jObj.getInt("createdBy");
				resultId = dbHelper.createBatchStudent(pi, createBy, jdbcTemplate);
			}
		}


		JSONObject resObj = new JSONObject();
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;
		try {
			responseCode = HttpStatus.OK;
			if(resultId == 0 ) {
				resObj.put("statusCode", 400);
				resObj.put("message", "Invalid registration no");
			}else if(resultId < 0 ) {
				resObj.put("statusCode", 400);
				resObj.put("message", "Already add in other batch");
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
			DebugLog.print("FeeController::createBatchStudent::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/*
	 * update Teacher detail
	 */

	@PostMapping("/updateBatchStudentDetail")
	public ResponseEntity<String> updateBatchDetail(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		BatchStudentModel pi = new BatchStudentModel();

		pi.setBatchStudentId(jObj.getInt("id"));
		pi.setBatchId(jObj.getInt("batchId"));
		pi.setBatchStudentId(jObj.getInt("studentId"));
		int updateBy = jObj.getInt("updateBy");
		int  isActive = jObj.getInt("isActive");


		boolean result = dbHelper.updateBatchStudent(pi, updateBy, isActive, jdbcTemplate);

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
	 * update batch student status
	 */
	@GetMapping("/updateBatchStudentStatus")
	public ResponseEntity<String> updateBatchStudentStatus(@RequestParam("batchStudentId") int batchStudentId,
			@RequestParam("isActive") int isActive) {


		boolean result = dbHelper.updateBatchStudentActiveStatus(batchStudentId,  isActive, jdbcTemplate);

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


	/**
	 * delete Student from batch
	 */
	@GetMapping("/deleteBatchStudent")
	public ResponseEntity<String> deleteBatchStudent(@RequestParam("batchStudentId") int batchStudentId) {


		boolean result = dbHelper.deleteBatchStudent(batchStudentId, jdbcTemplate);

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
			DebugLog.print("FeeController::deleteBatchStudent::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}


}


