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
import com.mindsmap.sanklap.database.helper.StandardHelper;
import com.mindsmap.sanklap.database.helper.SyllabusHelper;
import com.mindsmap.sanklap.models.StandardModel;
import com.mindsmap.sanklap.models.SubjectModel;
import com.mindsmap.sanklap.models.SyllabusTopicModel;

@CrossOrigin
@RestController
@RequestMapping("/api/syllabus")
public class SyllabusController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private SyllabusHelper dbHelper = new SyllabusHelper();



	/*
	 * get subject list
	 */

	@GetMapping("/getSubjectList")
	public ResponseEntity<String> getSubjectList(@RequestParam("standardName") String standardName,
			@RequestParam("branchId") int branchId) {

		JSONObject response = new JSONObject();

		StandardModel standardModel = new StandardHelper().getStandard(standardName, jdbcTemplate);


		ArrayList<SubjectModel> result =  dbHelper.getSubjectList(standardModel.getId(), branchId, jdbcTemplate);

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
			DebugLog.print("SyllabusController::getSubjectList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * get Syllabus list
	 */

	@GetMapping("/getTopicList")
	public ResponseEntity<String> getTopicList(@RequestParam("subjectId") int subjectId,
			@RequestParam("branchId") int branchId) {

		JSONObject response = new JSONObject();

		ArrayList<SyllabusTopicModel> result =  dbHelper.getTopicList(subjectId, branchId, jdbcTemplate);

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
			DebugLog.print("SyllabusController::getTopicList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * create topic
	 */

	@PostMapping("/createTopic")
	public ResponseEntity<String> createTopic(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		SyllabusTopicModel pi = new SyllabusTopicModel();

		pi.setTopicName(jObj.getString("name"));
		pi.setDescription(jObj.getString("description"));
		pi.setSubject_id(jObj.getInt("subjectId"));

		int attendanceId = dbHelper.createSyllabusTopic(pi, jdbcTemplate);

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
			DebugLog.print("SyllabusController::createTopic::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/*
	 * create topic
	 */

	@PostMapping("/updateTopicDetail")
	public ResponseEntity<String> updateTopicDetail(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		SyllabusTopicModel pi = new SyllabusTopicModel();

		pi.setId(jObj.getInt("id"));
		pi.setTopicName(jObj.getString("name"));
		pi.setDescription(jObj.getString("description"));

		boolean result = dbHelper.updateTopicDetail(pi, jdbcTemplate);

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
			DebugLog.print("SyllabusController::createTopic::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/*
	 * update topic status
	 */

	@PostMapping("/updateTopicStatus")
	public ResponseEntity<String> updateTicketStatus(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		boolean result = dbHelper.updateTopicStatus(jObj.getInt("id"),
				jObj.getInt("isActive"), jdbcTemplate);

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
			DebugLog.print("SyllabusController::updateTicketStatus::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}
}


