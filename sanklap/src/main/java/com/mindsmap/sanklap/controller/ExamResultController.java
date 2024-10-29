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
import com.mindsmap.sanklap.database.helper.ExamResultHelper;
import com.mindsmap.sanklap.models.ExamSubjectResultModel;
import com.mindsmap.sanklap.models.StudentResultModel;

@CrossOrigin
@RestController
@RequestMapping("/api/examResult")
public class ExamResultController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private ExamResultHelper dbHelper = new ExamResultHelper();


	/*
	 * get exam Student list
	 */

	@GetMapping("/getStudentExamResultList")
	public ResponseEntity<String> getStudentExamResultList(@RequestParam("examId") int examId,
			@RequestParam("page") int page) {

		JSONObject response = new JSONObject();

		ArrayList<StudentResultModel> result =  dbHelper.getExamStudentResultList(examId, page, jdbcTemplate);

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

			DebugLog.print("ExamResultController::getExamResult::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * get exam result
	 */

	@GetMapping("/getExamResult")
	public ResponseEntity<String> getExamResult(@RequestParam("examId") int examId,
			@RequestParam("studentId") int studentId) {

		JSONObject response = new JSONObject();

		ArrayList<ExamSubjectResultModel> result =  dbHelper.getExamResultList(examId, studentId, jdbcTemplate);

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

			DebugLog.print("ExamResultController::getExamResult::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}



	/*
	 * create exam
	 */

	@PostMapping("/createExamResult")
	public ResponseEntity<String> createExamResult(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		ExamSubjectResultModel pi = new ExamSubjectResultModel();

		pi.setExamId(jObj.getInt("examId"));
		pi.setExamSubjectId(jObj.getInt("subjectId"));
		pi.setStudentId(jObj.getInt("studentId"));
		pi.setScoredMarks(jObj.getDouble("scoredMarks"));
		pi.setGrade(jObj.getString("grade"));

		int resut = dbHelper.createExamResult(pi, jdbcTemplate);

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
			DebugLog.print("ExamResultController::createExamResult::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/*
	 * update exam detail
	 */

	@PostMapping("/updateExamResult")
	public ResponseEntity<String> updateExamResult(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		ExamSubjectResultModel pi = new ExamSubjectResultModel();

		pi.setId(jObj.getInt("id"));
		pi.setExamId(jObj.getInt("examId"));
		pi.setExamSubjectId(jObj.getInt("subjectId"));
		pi.setStudentId(jObj.getInt("studentId"));
		pi.setScoredMarks(jObj.getDouble("scoredMarks"));
		pi.setGrade(jObj.getString("grade"));

		boolean result = dbHelper.updateExamResult(pi, jdbcTemplate);

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
			DebugLog.print("ExamResultController::updateExamResult::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

}




