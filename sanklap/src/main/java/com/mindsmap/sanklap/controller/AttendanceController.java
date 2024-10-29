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
import com.mindsmap.sanklap.database.helper.AttendanceHelper;
import com.mindsmap.sanklap.database.helper.BatchHelper;
import com.mindsmap.sanklap.models.AttendanceModel;
import com.mindsmap.sanklap.models.BatchModel;
import com.mindsmap.sanklap.models.BatchStudentModel;
import com.mindsmap.sanklap.models.OverallAttendanceModel;
import com.mindsmap.sanklap.models.StudentAttendanceModel;

@CrossOrigin
@RestController
@RequestMapping("/api/attendance")
public class AttendanceController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private AttendanceHelper dbHelper = new AttendanceHelper();

	/*
	 * get batch student Attendance list
	 */

	@GetMapping("/getBatchStudentAttendanceList")
	public ResponseEntity<String> getBatchStudentAttendanceList(@RequestParam("batchId") int batchId,
			@RequestParam("dateKeyword") String dateKeyword) {

		JSONObject response = new JSONObject();

		ArrayList<StudentAttendanceModel> result = dbHelper.getBatchStudentAttendanceList(batchId, dateKeyword, jdbcTemplate);

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
			DebugLog.print("AttendanceController::getBatchStudentAttendanceList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));

		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}


	/*
	 * get Student overall Attendance
	 */

	@GetMapping("/getOverallAttendance")
	public ResponseEntity<String> getOverallAttendance(@RequestParam("studentId") int studentId) {

		JSONObject response = new JSONObject();

		BatchStudentModel batchStudent = dbHelper.getBatchStudent(studentId, jdbcTemplate);
		BatchModel batchModel = new BatchHelper().getBatchDetail(batchStudent.getBatchId(), null);


		String msg = "Fail";
		int statusCode = 400;
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;

		if(batchModel != null && !Utils.isEmpty(batchModel.getBatchStartDate())) {
			String startDate = batchModel.getBatchStartDate().split(" ")[0];
			String endDate	= Utils.getTodayDate();

			OverallAttendanceModel result =  dbHelper.getOverallAttendance(studentId, batchStudent.getBatchStudentId(),
					startDate, endDate,
					jdbcTemplate);


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
				DebugLog.print("AttendanceController::getAttendanceList::Exception: " + e, false);
			}

			response.put("data", new JSONObject(jsonArray));
		}

		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}



	/*
	 * get Attendance list
	 */

	@GetMapping("/getAttendanceList")
	public ResponseEntity<String> getAttendanceList(@RequestParam("studentId") int studentId,
			@RequestParam("dateKeyword") String dateKeyword) {


		JSONObject response = new JSONObject();

		ArrayList<AttendanceModel> result =  dbHelper.getAttendanceList(studentId, dateKeyword, jdbcTemplate);

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
			DebugLog.print("AttendanceController::getAttendanceList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * createAttendance
	 */

	@PostMapping("/createAttendance")
	public ResponseEntity<String> createAttendance(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		AttendanceModel pi = new AttendanceModel();

		pi.setStudentId(jObj.getInt("studentId"));
		pi.setAttendance(jObj.getInt("attendance"));
		pi.setAttendanceForDate(jObj.getString("attendance_for_date"));

		pi.setCreatedBy(jObj.getInt("created_by"));
		pi.setUpdatedBy(jObj.getInt("updated_by"));
		int teacherId = 0;
		if(jObj.has("teacherId")) {
			teacherId = jObj.getInt("teacherId");
		}

		int attendanceId = dbHelper.createAttendance(pi, teacherId, jdbcTemplate);

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
			DebugLog.print("AttendanceController::createAttendance::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}


	/*
	 * create class batch Attendance
	 */

	@PostMapping("/createClassBatchAttendance")
	public ResponseEntity<String> createClassBatchAttendance(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);


		String[] batchStudentIds = jObj.getString("batchStudentIds").split(",");
		String[] attendanceStatus = jObj.getString("attendanceStatus").split(",");
		String[] attendanceIds = jObj.getString("attendanceIds").split(",");

		String attendanceForDate = jObj.getString("attendance_for_date");
		int teacherId = jObj.getInt("teacherId");

		int markedBy = jObj.getInt("marked_by");

		int attendanceId = 0;
		for(int i = 0; i < batchStudentIds.length;i++) {
			StudentAttendanceModel si = new StudentAttendanceModel();
			si.setBatchStudentId(Integer.parseInt(batchStudentIds[i].trim()));
			si.setAttendanceId(Integer.parseInt(attendanceIds[i].trim()));
			si.setAttendanceStatus(Integer.parseInt(attendanceStatus[i].trim()));
			si.setAttendanceForDate(attendanceForDate);

			boolean isOpenDb = false;
			if(i == 0) {
				isOpenDb = true;
			}
			if(i == batchStudentIds.length-1) {
				isOpenDb = false;
			}
			attendanceId = dbHelper.createClassBatchAttendance(
					si, markedBy,teacherId,
					isOpenDb,
					jdbcTemplate);
		}


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

				//resObj.put("data", attendanceId);
				resObj.put("message", msg);
				resObj.put("statusCode", statusCode);
			}
		}catch(Exception e) {
			DebugLog.print("AttendanceController::createAttendance::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

}

