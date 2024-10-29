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
import com.mindsmap.sanklap.database.helper.TeacherHelper;
import com.mindsmap.sanklap.models.FeeModel;
import com.mindsmap.sanklap.models.TeacherModel;

@CrossOrigin
@RestController
@RequestMapping("/api/teacher")
public class TeacherController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private TeacherHelper dbHelper = new TeacherHelper();

	/*
	 * get teacher list
	 */

	@GetMapping("/getTeacherList")
	public ResponseEntity<String> getTeacherList(@RequestParam("branchId") int branchId) {

		JSONObject response = new JSONObject();

		ArrayList<TeacherModel> result =  dbHelper.getTeacherList(branchId, null, jdbcTemplate);

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
			DebugLog.print("TeacherController::getTeacherList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * get search teacher
	 */

	@PostMapping("/searchTeacher")
	public ResponseEntity<String> searchTeacher(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);
		String keyword = jObj.getString("keyword");

		JSONObject response = new JSONObject();

		ArrayList<TeacherModel> result =  dbHelper.getTeacherList(-1, keyword.toLowerCase().trim(), jdbcTemplate);

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
			DebugLog.print("TeacherController::searchTeacher::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * create Teacher
	 */

	@PostMapping("/createTeacher")
	public ResponseEntity<String> createTeacher(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		TeacherModel pi = new TeacherModel();


		pi.setBranchId(jObj.getInt("branchId"));
		pi.setIsMale(jObj.getInt("isMale"));
		pi.setCreatedBy(jObj.getInt("createdBy"));
		pi.setRegNo(jObj.getString("regNo"));

		pi.setFirstName(jObj.getString("firstName"));
		pi.setLastName(jObj.getString("lastName"));
		pi.setMobileNo(jObj.getString("mobileNo"));
		pi.setAltMobileNo(jObj.getString("altMobileNo"));

		pi.setEmailId(jObj.getString("emailId"));
		pi.setDob(jObj.getString("dob"));
		pi.setMotherTongue(jObj.getString("motherTongue"));
		pi.setNationality(jObj.getString("nationality"));

		pi.setBloodGroup(jObj.getString("bloodGroup"));
		pi.setQualification(jObj.getString("qualification"));
		pi.setDateOfJoining(jObj.getString("dateOfJoining"));
		pi.setDateOfLeaving(jObj.getString("dateOfLeaving"));

		pi.setAddress(jObj.getString("address"));
		pi.setLandmark(jObj.getString("landmark"));
		pi.setCity(jObj.getString("city"));
		pi.setState(jObj.getString("state"));

		pi.setPincode(jObj.getString("pincode"));
		pi.setRemarks(jObj.getString("remarks"));

		int attendanceId = dbHelper.createTeacher(pi, jdbcTemplate);

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
	 * update Teacher detail
	 */

	@PostMapping("/updateTeacherDetail")
	public ResponseEntity<String> updateTeacherDetail(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		TeacherModel pi = new TeacherModel();

		pi.setId(jObj.getInt("teacherId"));
		pi.setBranchId(jObj.getInt("branchId"));
		pi.setIsMale(jObj.getInt("isMale"));
		pi.setUpdatedBy(jObj.getInt("createdBy"));
		pi.setRegNo(jObj.getString("regNo"));

		pi.setFirstName(jObj.getString("firstName"));
		pi.setLastName(jObj.getString("lastName"));
		pi.setMobileNo(jObj.getString("mobileNo"));
		pi.setAltMobileNo(jObj.getString("altMobileNo"));

		pi.setEmailId(jObj.getString("emailId"));
		pi.setDob(jObj.getString("dob"));
		pi.setMotherTongue(jObj.getString("motherTongue"));
		pi.setNationality(jObj.getString("nationality"));

		pi.setBloodGroup(jObj.getString("bloodGroup"));
		pi.setQualification(jObj.getString("qualification"));
		pi.setDateOfJoining(jObj.getString("dateOfJoining"));
		pi.setDateOfLeaving(jObj.getString("dateOfLeaving"));

		pi.setAddress(jObj.getString("address"));
		pi.setLandmark(jObj.getString("landmark"));
		pi.setCity(jObj.getString("city"));
		pi.setState(jObj.getString("state"));

		pi.setPincode(jObj.getString("pincode"));
		pi.setRemarks(jObj.getString("remarks"));

		boolean result = dbHelper.updateTeacher(pi, jdbcTemplate);

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
	 * update teacher status
	 */
	@GetMapping("/updateTeacherStatus")
	public ResponseEntity<String> updateTeacherActiveStatus(@RequestParam("teacherId") int teacherId,
			@RequestParam("isActive") int isActive) {


		boolean result = dbHelper.updateTeacherActiveStatus(teacherId,  isActive, jdbcTemplate);

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



