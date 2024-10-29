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
import com.mindsmap.sanklap.database.helper.TicketsHelper;
import com.mindsmap.sanklap.models.TicketModel;

@CrossOrigin
@RestController
@RequestMapping("/api/ticket")
public class TicketsController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private TicketsHelper dbHelper = new TicketsHelper();

	/*
	 * get Ticket list
	 */

	@GetMapping("/getTicketList")
	public ResponseEntity<String> getTicketList(@RequestParam("studentId") int studentId) {

		JSONObject response = new JSONObject();

		ArrayList<TicketModel> result =  dbHelper.getTicketList(studentId, jdbcTemplate);

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
			DebugLog.print("TicketsController::getLeaveList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * get All Ticket list
	 */

	@GetMapping("/getAllTicketList")
	public ResponseEntity<String> getAllTicketList(@RequestParam("ticketStatus") int ticketStatus,
			@RequestParam("page") int page) {

		JSONObject response = new JSONObject();

		ArrayList<TicketModel> result =  dbHelper.getAllTicketList(ticketStatus, page, jdbcTemplate);

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
			DebugLog.print("TicketsController::getLeaveList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}


	/*
	 * create ticket
	 */

	@PostMapping("/createTicket")
	public ResponseEntity<String> createTicket(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		TicketModel pi = new TicketModel();

		pi.setMessage(jObj.getString("message"));
		pi.setTitle(jObj.getString("title"));

		pi.setStudent_id(jObj.getInt("studentId"));
		pi.setStatus(1);

		pi.setBranchId(jObj.getInt("branchId"));

		int attendanceId = dbHelper.createTicket(pi, jdbcTemplate);

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
			DebugLog.print("TicketsController::createTicket::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/*
	 * create ticket
	 */

	@PostMapping("/updateTicketStatus")
	public ResponseEntity<String> updateTicketStatus(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		TicketModel pi = new TicketModel();

		pi.setComment(jObj.getString("comment"));
		pi.setId(jObj.getInt("ticketId"));
		pi.setStatus(jObj.getInt("status"));

		boolean result = dbHelper.updateTicketStatus(pi.getId(), pi.getComment(), pi.getStatus(), jdbcTemplate);

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
			DebugLog.print("TicketsController::updateTicketStatus::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}
}


