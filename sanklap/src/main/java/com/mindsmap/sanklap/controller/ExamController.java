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
import com.mindsmap.sanklap.database.helper.ExamHelper;
import com.mindsmap.sanklap.models.ExamModel;

@CrossOrigin
@RestController
@RequestMapping("/api/exam")
public class ExamController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private ExamHelper dbHelper = new ExamHelper();



	/*
	 * get exam list
	 */

	@GetMapping("/getExamList")
	public ResponseEntity<String> getExamList(@RequestParam("standardId") int standardId,
			@RequestParam("branchId") int branchId) {

		JSONObject response = new JSONObject();

		ArrayList<ExamModel> result =  dbHelper.getExamList(standardId, branchId, jdbcTemplate);

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
			DebugLog.print("ExamController::getExamList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}



	/*
	 * create exam
	 */

	@PostMapping("/createExam")
	public ResponseEntity<String> createExam(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		ExamModel pi = new ExamModel();

		pi.setTitle(jObj.getString("title"));
		pi.setBranchId(jObj.getInt("branchId"));
		pi.setStandardId(jObj.getInt("standardId"));
		pi.setExamDate(jObj.getString("examDate"));

		int resut = dbHelper.createExam(pi, jdbcTemplate);

		JSONObject resObj = new JSONObject();
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;
		try {
			responseCode = HttpStatus.OK;
			if(resut <= 0 ) {
				resObj.put("statusCode", 400);
				resObj.put("message", "error");
			}else {
				String msg = "Success";
				int statusCode = 200;
				statusCode = 200;
				responseCode = HttpStatus.OK;

				resObj.put("data", resut);
				resObj.put("message", msg);
				resObj.put("statusCode", statusCode);
			}
		}catch(Exception e) {
			DebugLog.print("ExamController::createExam::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/*
	 * update exam detail
	 */

	@PostMapping("/updateExamDetail")
	public ResponseEntity<String> updateExamDetail(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		ExamModel pi = new ExamModel();

		pi.setId(jObj.getInt("id"));
		pi.setTitle(jObj.getString("title"));
		pi.setBranchId(jObj.getInt("branchId"));
		pi.setStandardId(jObj.getInt("standardId"));
		pi.setExamDate(jObj.getString("examDate"));

		boolean result = dbHelper.updateExamDetail(pi, jdbcTemplate);

		JSONObject resObj = new JSONObject();
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;
		try {
			responseCode = HttpStatus.OK;
			if(!result) {
				resObj.put("statusCode", 400);
				resObj.put("message", "error");
			}else {
				String msg = "Success";
				int statusCode = 200;
				statusCode = 200;
				responseCode = HttpStatus.OK;

				resObj.put("message", msg);
				resObj.put("statusCode", statusCode);
			}
		}catch(Exception e) {
			DebugLog.print("ExamController::updateExamDetail::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

}


