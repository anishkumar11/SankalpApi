package com.mindsmap.sanklap.controller;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.database.helper.SyllabusTopicStatusHelper;
import com.mindsmap.sanklap.models.TopicStatusModel;

@CrossOrigin
@RestController
@RequestMapping("/api/syllabusTopicStatus")
public class SyllabusTopicStatusController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private SyllabusTopicStatusHelper dbHelper = new SyllabusTopicStatusHelper();



	/*
	 * create topic syllabus topic status
	 */

	@PostMapping("/createSyllabusTopicStatus")
	public ResponseEntity<String> createTopic(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		TopicStatusModel pi = new TopicStatusModel();

		pi.setTopicId(jObj.getInt("topicId"));
		pi.setBranchId(jObj.getInt("branchId"));
		pi.setStatus(jObj.getInt("status"));
		pi.setCreatedBy(jObj.getInt("createdBy"));
		pi.setUpdatedBy(pi.getCreatedBy());

		int result = dbHelper.createSyllabusTopicStatus(pi, jdbcTemplate);

		JSONObject resObj = new JSONObject();
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;
		try {
			responseCode = HttpStatus.OK;
			if(result <= 0 ) {
				resObj.put("statusCode", 400);
				resObj.put("message", "error");
			}else {
				String msg = "Success";
				int statusCode = 200;
				statusCode = 200;
				responseCode = HttpStatus.OK;

				resObj.put("data", result);
				resObj.put("message", msg);
				resObj.put("statusCode", statusCode);
			}
		}catch(Exception e) {
			DebugLog.print("SyllabusTopicStatusController::createTopic::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}


}


