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
import com.mindsmap.sanklap.database.helper.StudentHelper;
import com.mindsmap.sanklap.models.StudentModel;
import com.mindsmap.sanklap.models.TeacherModel;

@CrossOrigin
@RestController
@RequestMapping("/api/student")
public class StudentController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private StudentHelper dbHelper = new StudentHelper();

	/*
	 * get student list
	 */

	@GetMapping("/getStudentList")
	public ResponseEntity<String> getStudentList(@RequestParam("branchId") int branchId,
			@RequestParam("page") int page) {

		JSONObject response = new JSONObject();

		ArrayList<StudentModel> result =  dbHelper.getStudentList(branchId,null, page, jdbcTemplate);

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
			DebugLog.print("StudentController::getStudentList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * search student
	 */

	@PostMapping("/searchStudent")
	public ResponseEntity<String> searchStudent(@RequestBody String postData) {


		JSONObject jObj = new JSONObject(postData);
		String keyword = jObj.getString("keyword");
		int page = jObj.getInt("page");

		JSONObject response = new JSONObject();

		ArrayList<StudentModel> result =  dbHelper.getStudentList(-1, keyword.toLowerCase().trim(), page, jdbcTemplate);

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
			DebugLog.print("StudentController::searchStudent::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * create student
	 */

	@PostMapping("/createStudent")
	public ResponseEntity<String> createStudent(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		StudentModel pi = new StudentModel();


		pi.setBranchId(jObj.getInt("branchId"));
		pi.setIsMale(jObj.getInt("isMale"));
		int createdBy = jObj.getInt("createdBy");
		pi.setRegNo(jObj.getString("regNo"));

		pi.setFirstName(jObj.getString("firstName"));
		pi.setLastName(jObj.getString("lastName"));
		pi.setMobileNo(jObj.getString("mobileNo"));
		pi.setAltMobileNo(jObj.getString("altMobileNo"));

		pi.setEmailId(jObj.getString("emailId"));
		pi.setStuEmailId(jObj.getString("stuEmailId"));
		pi.setDob(jObj.getString("dob"));
		pi.setMotherTongue(jObj.getString("motherTongue"));
		pi.setNationality(jObj.getString("nationality"));

		pi.setBloodGroup(jObj.getString("bloodGroup"));
		pi.setDateOfJoining(jObj.getString("dateOfJoining"));
		pi.setDateOfLeaving(jObj.getString("dateOfLeaving"));

		pi.setAddress(jObj.getString("address"));
		pi.setLandmark(jObj.getString("landmark"));
		pi.setCity(jObj.getString("city"));
		pi.setState(jObj.getString("state"));
		pi.setCountry(jObj.getString("country"));

		pi.setPincode(jObj.getString("pincode"));
		pi.setRemarks(jObj.getString("remarks"));

		pi.setFatherName(jObj.getString("fatherName"));
		pi.setMotherName(jObj.getString("motherName"));
		pi.setIsActive(1);


		int attendanceId = dbHelper.createStudent(pi, createdBy, jdbcTemplate);

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
			DebugLog.print("StudentController::createStudentFee::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/*
	 * update Student detail
	 */

	@PostMapping("/updateStudentDetail")
	public ResponseEntity<String> updateStudentDetail(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		StudentModel pi = new StudentModel();

		pi.setId(jObj.getInt("id"));
		pi.setBranchId(jObj.getInt("branchId"));
		pi.setIsMale(jObj.getInt("isMale"));
		int updatedBy = jObj.getInt("updatedBy");
		pi.setRegNo(jObj.getString("regNo"));

		pi.setFirstName(jObj.getString("firstName"));
		pi.setLastName(jObj.getString("lastName"));
		pi.setMobileNo(jObj.getString("mobileNo"));
		pi.setAltMobileNo(jObj.getString("altMobileNo"));

		pi.setEmailId(jObj.getString("emailId"));
		pi.setStuEmailId(jObj.getString("stuEmailId"));
		pi.setDob(jObj.getString("dob"));
		pi.setMotherTongue(jObj.getString("motherTongue"));
		pi.setNationality(jObj.getString("nationality"));

		pi.setBloodGroup(jObj.getString("bloodGroup"));
		pi.setDateOfJoining(jObj.getString("dateOfJoining"));
		pi.setDateOfLeaving(jObj.getString("dateOfLeaving"));

		pi.setAddress(jObj.getString("address"));
		pi.setLandmark(jObj.getString("landmark"));
		pi.setCity(jObj.getString("city"));
		pi.setState(jObj.getString("state"));
		pi.setCountry(jObj.getString("country"));

		pi.setPincode(jObj.getString("pincode"));
		pi.setRemarks(jObj.getString("remarks"));

		pi.setFatherName(jObj.getString("fatherName"));
		pi.setMotherName(jObj.getString("motherName"));

		boolean result = dbHelper.updateStudent(pi, updatedBy, jdbcTemplate);

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
			DebugLog.print("StudentController::updateStudentFee::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/**
	 * update Student status
	 */
	@GetMapping("/updateStudentStatus")
	public ResponseEntity<String> updateStudentActiveStatus(@RequestParam("studentId") int studentId,
			@RequestParam("isActive") int isActive) {


		boolean result = dbHelper.updateStudentActiveStatus(studentId,  isActive, jdbcTemplate);

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
			DebugLog.print("StudentController::updateStudentActiveStatus::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}


}



