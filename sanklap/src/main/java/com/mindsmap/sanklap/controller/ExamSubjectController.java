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
import com.mindsmap.sanklap.database.helper.ExamSubjectHelper;
import com.mindsmap.sanklap.models.ExamSubjectModel;

@CrossOrigin
@RestController
@RequestMapping("/api/examSubject")
public class ExamSubjectController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private ExamSubjectHelper dbHelper = new ExamSubjectHelper();



	/*
	 * get exam list
	 */

	@GetMapping("/getExamSubjectList")
	public ResponseEntity<String> getExamSubjectList(@RequestParam("examId") int examId) {

		JSONObject response = new JSONObject();

		ArrayList<ExamSubjectModel> result =  dbHelper.getExamSubjectList(examId, jdbcTemplate);

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
			DebugLog.print("ExamSubjectController::getExamSubjectList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}



	/*
	 * create exam
	 */

	@PostMapping("/createExamSubject")
	public ResponseEntity<String> createExamSubject(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		ExamSubjectModel pi = new ExamSubjectModel();

		pi.setExamId(jObj.getInt("examId"));
		pi.setSubjectId(jObj.getInt("subjectId"));
		pi.setTotalMarks(jObj.getInt("totalMarks"));

		int resut = dbHelper.createExamSubject(pi, jdbcTemplate);

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
			DebugLog.print("ExamSubjectController::createExamSubject::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/*
	 * update exam detail
	 */

	@PostMapping("/updateExamSubjectDetail")
	public ResponseEntity<String> updateExamSubjectDetail(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		ExamSubjectModel pi = new ExamSubjectModel();

		pi.setId(jObj.getInt("id"));
		pi.setExamId(jObj.getInt("examId"));
		pi.setSubjectId(jObj.getInt("subjectId"));
		pi.setTotalMarks(jObj.getInt("totalMarks"));

		boolean result = dbHelper.updateExamSubject(pi, jdbcTemplate);

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
			DebugLog.print("ExamSubjectController::updateExamSubjectDetail::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

}



