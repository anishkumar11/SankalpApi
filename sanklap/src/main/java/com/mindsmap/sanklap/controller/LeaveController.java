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
import com.mindsmap.sanklap.database.helper.LeaveHelper;
import com.mindsmap.sanklap.models.LeaveModel;

@CrossOrigin
@RestController
@RequestMapping("/api/leave")
public class LeaveController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private LeaveHelper dbHelper = new LeaveHelper();
	/*
	 * get Attendance list
	 */

	@PostMapping("/getLeaveList")
	public ResponseEntity<String> getLeaveList(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);
		String mobile = jObj.getString("mobile");
		String studentClass = jObj.getString("studentClass");

		JSONObject response = new JSONObject();

		ArrayList<LeaveModel> result =  dbHelper.getLeaveList(mobile, studentClass, jdbcTemplate);

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
			DebugLog.print("LeaveController::getLeaveList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * Apply for leave
	 */

	@PostMapping("/apply")
	public ResponseEntity<String> createLeave(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		LeaveModel pi = new LeaveModel();

		pi.setDays(jObj.getInt("days"));
		pi.setFromDate(jObj.getString("fromDate"));
		pi.setMobile(jObj.getString("mobile"));

		pi.setName(jObj.getString("name"));
		pi.setReason(jObj.getString("reason"));

		pi.setStudentClass(jObj.getString("classes"));
		pi.setToDate(jObj.getString("toDate"));

		int attendanceId = dbHelper.createLeave(pi, jdbcTemplate);

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
			DebugLog.print("LeaveController::createAttendance::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

}

