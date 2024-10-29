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
import com.mindsmap.sanklap.database.helper.FeeHelper;
import com.mindsmap.sanklap.models.FeeModel;
import com.mindsmap.sanklap.models.StudentFeeModel;

@CrossOrigin
@RestController
@RequestMapping("/api/fee")
public class FeeController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private FeeHelper dbHelper = new FeeHelper();


	/*
	 * get Student Fee Detail
	 */

	@GetMapping("/getStudentFeeDetail")
	public ResponseEntity<String> getStudentFeeDetail(@RequestParam("studentId") int studentId) {

		JSONObject response = new JSONObject();

		StudentFeeModel result =  dbHelper.getStudentFeeDetail(studentId, jdbcTemplate);

		String msg = "Fail";
		int statusCode = 400;
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;
		if(result != null) {
			msg = "Success";
			statusCode = 200;
			responseCode = HttpStatus.OK;

		}

		ObjectMapper objectMapper = new ObjectMapper();
	    String jsonObject = "{}";
		try {
			jsonObject = objectMapper.writeValueAsString(result);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			DebugLog.print("FeeController::getStudentFeeDetail::Exception: " + e, false);
		}

		response.put("data", new JSONObject(jsonObject));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * get Student Fee list
	 */

	@PostMapping("/getStudentFeeList")
	public ResponseEntity<String> getStudentFeeList(@RequestBody String postData) {

		JSONObject obj = new JSONObject(postData);

		int batchId = obj.getInt("batchId");
		int page = obj.getInt("page");
		String searchkeyword = obj.getString("searchkeyword");


		JSONObject response = new JSONObject();

		ArrayList<StudentFeeModel> result =  dbHelper.getStudentFeeList(batchId, searchkeyword, page, jdbcTemplate);

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
			DebugLog.print("FeeController::getLeaveList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);


		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * get Fee list
	 */

	@GetMapping("/getFeeList")
	public ResponseEntity<String> getFeeList(@RequestParam("studentId") int studentId,
			@RequestParam("batchId") int batchId) {

		JSONObject response = new JSONObject();

		ArrayList<FeeModel> result =  dbHelper.getFeeList(studentId, batchId, jdbcTemplate);

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
			DebugLog.print("FeeController::getLeaveList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * create create student fee
	 */

	@PostMapping("/createStudentFee")
	public ResponseEntity<String> createStudentFee(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		FeeModel pi = new FeeModel();

		pi.setTotalFee(jObj.getDouble("feeAmount"));
		pi.setBatchId(jObj.getInt("batchId"));
		pi.setTitle(jObj.getString("title"));
		pi.setStudentId(jObj.getInt("studentId"));

		int attendanceId = dbHelper.createStudentFee(pi, jdbcTemplate);

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
	 * update student fee
	 */

	@PostMapping("/updateStudentFee")
	public ResponseEntity<String> updateStudentFee(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		FeeModel pi = new FeeModel();

		pi.setId(jObj.getInt("feeId"));
		pi.setTotalFee(jObj.getDouble("feeAmount"));
		pi.setBatchId(jObj.getInt("batchId"));
		pi.setTitle(jObj.getString("title"));
		pi.setStudentId(jObj.getInt("studentId"));

		boolean result = dbHelper.updateStudentFee(pi, jdbcTemplate);

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
	 * Delete Student fee
	 */
	@GetMapping("/deleteStudentFee")
	public ResponseEntity<String> deleteStudentFee(@RequestParam("feeId") int feeId) {


		boolean result = dbHelper.deleteStudentFee(feeId, jdbcTemplate);

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
			DebugLog.print("FeeController::deleteStudentFee::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}
}



