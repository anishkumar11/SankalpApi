package com.mindsmap.sanklap.controller;

import java.util.ArrayList;

import org.json.JSONArray;
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

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mindsmap.sanklap.core.DebugLog;
import com.mindsmap.sanklap.database.helper.AdminUserHelper;
import com.mindsmap.sanklap.database.helper.StudentHelper;
import com.mindsmap.sanklap.models.AdminUserModel;
import com.mindsmap.sanklap.models.StudentModel;

@CrossOrigin
@RestController
@RequestMapping("/api/login")
public class AuthController {


	@Autowired
	private JdbcTemplate jdbcTemplate;
	/*
	 * Do admin login
	 */

	@PostMapping("/doAdminLogin")
	public ResponseEntity<String> doAdminLogin(@RequestBody String postData) {

		
		AdminUserHelper dbHelper = new AdminUserHelper();

		JSONObject response = new JSONObject();

		JSONObject jObj = new JSONObject(postData);
		String userName = jObj.getString("userName");
		String password = jObj.getString("password");


		AdminUserModel result =  dbHelper.doAdminLogin(-1, userName, password, jdbcTemplate);

		String msg = "Fail";
		int statusCode = 400;
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;
		if(result != null) {
			msg = "Success";
			statusCode = 200;
			responseCode = HttpStatus.OK;
			ObjectMapper objectMapper = new ObjectMapper();
		    String jsonArray = "{}";
			try {
				jsonArray = objectMapper.writeValueAsString(result);
			} catch (JsonProcessingException e) {
				DebugLog.print("AuthController::doAdminLogin::Exception: " + e, false);
			}

			response.put("data", new JSONObject(jsonArray));
		}


		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * Do Student login
	 */

	@PostMapping("/doStudentLogin")
	public ResponseEntity<String> doStudentLogin(@RequestBody String postData) {

		StudentHelper dbHelper = new StudentHelper();

		JSONObject response = new JSONObject();

		JSONObject jObj = new JSONObject(postData);
		String userName = jObj.getString("userName");
		//String password = jObj.getString("password");


		ArrayList<StudentModel> result =  dbHelper.doStudentLogin(userName, jdbcTemplate);

		String msg = "Fail";
		int statusCode = 400;
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;
		if(result != null && !result.isEmpty()) {
			msg = "Success";
			statusCode = 200;
			responseCode = HttpStatus.OK;
			ObjectMapper objectMapper = new ObjectMapper();
		    String jsonArray = "[]";
			try {
				jsonArray = objectMapper.writeValueAsString(result);
			} catch (JsonProcessingException e) {
				DebugLog.print("AuthController::doAdminLogin::Exception: " + e, false);
			}

			response.put("data", new JSONArray(jsonArray));
			response.put("userName", userName);
		}
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

}



