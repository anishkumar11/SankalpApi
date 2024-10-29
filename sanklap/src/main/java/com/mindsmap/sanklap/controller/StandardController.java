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
import com.mindsmap.sanklap.database.helper.StandardHelper;
import com.mindsmap.sanklap.models.StandardModel;
import com.mindsmap.sanklap.models.StudentModel;
import com.mindsmap.sanklap.models.TicketModel;

@CrossOrigin
@RestController
@RequestMapping("/api/standard")
public class StandardController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private StandardHelper dbHelper = new StandardHelper();

	/*
	 * get Branch Standard list
	 */

	@GetMapping("/getBranchStandardList")
	public ResponseEntity<String> getBranchStandardList(@RequestParam("branchId") int branchId) {

		JSONObject response = new JSONObject();

		ArrayList<StandardModel> result =  dbHelper.getStandardList(branchId, jdbcTemplate);

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
			DebugLog.print("StandardController::getBranchStandardList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * get All Standard list
	 */

	@GetMapping("/getStandardList")
	public ResponseEntity<String> getStandardList() {

		JSONObject response = new JSONObject();

		ArrayList<StandardModel> result =  dbHelper.getStandardList(jdbcTemplate);

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
			DebugLog.print("TicketsController::getLeaveList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}


	/*
	 * get Standard list
	 */

	@PostMapping("/getStandard")
	public ResponseEntity<String> getStandard(@RequestBody String postData) {

		JSONObject response = new JSONObject();
		JSONObject jObj = new JSONObject(postData);

		StandardModel result =  dbHelper.getStandard(jObj.getString("standardName"), jdbcTemplate);

		String msg = "Fail";
		int statusCode = 400;
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;
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
			DebugLog.print("StandardController::getLeaveList::Exception: " + e, false);
		}

		response.put("data", new JSONObject(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * get Student list
	 */

	@GetMapping("/getStudentList")
	public ResponseEntity<String> getStudentList(@RequestParam("standardId") int standardId) {

		JSONObject response = new JSONObject();

		ArrayList<StudentModel> result =  dbHelper.getStudentList(standardId, jdbcTemplate);

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
			DebugLog.print("TicketsController::getLeaveList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}


}



