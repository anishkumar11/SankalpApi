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
import com.mindsmap.sanklap.database.helper.EventHelper;
import com.mindsmap.sanklap.models.EventModel;

@CrossOrigin
@RestController
@RequestMapping("/api/event")
public class EventController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private EventHelper dbHelper = new EventHelper();

	/*
	 * get Dairy List of batch
	 */

	@GetMapping("/getEventItemList")
	public ResponseEntity<String> getEventItemList(@RequestParam("branchId") int branchId,
			@RequestParam(name= "year", defaultValue = "0", required = false) int  year,
			@RequestParam(name="month", defaultValue = "0", required = false)  int month,
			@RequestParam("isActive") int status,
			@RequestParam("page") int page) {

		JSONObject response = new JSONObject();

		String keyword = "";
		if(year > 0 && month > 0) {
			keyword = year+"-";
			if(month < 10) {
				keyword = keyword+"0"+month;
			}else {
				keyword = keyword+month;
			}
		}



		ArrayList<EventModel> result =  dbHelper.getEventItemList(branchId, keyword, status, page, jdbcTemplate);

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
			DebugLog.print("EventController::getEventItemList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * create Event Item
	 */

	@PostMapping("/createEventItem")
	public ResponseEntity<String> createEventItem(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		EventModel pi = new EventModel();

		pi.setBranchId(jObj.getInt("branchId"));
		pi.setDate(jObj.getString("date"));
		pi.setTitle(jObj.getString("title"));
		pi.setDescription(jObj.getString("description"));
		pi.setImageUrl(jObj.getString("imageUrl"));
		int createdBy = jObj.getInt("createdBy");

		int resultId = dbHelper.createEventItem(pi, createdBy, jdbcTemplate);

		JSONObject resObj = new JSONObject();
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;
		try {
			responseCode = HttpStatus.OK;
			if(resultId <= 0 ) {
				resObj.put("statusCode", 400);
				resObj.put("message", "error");
			}else {
				String msg = "Success";
				int statusCode = 200;
				statusCode = 200;
				responseCode = HttpStatus.OK;

				resObj.put("data", resultId);
				resObj.put("message", msg);
				resObj.put("statusCode", statusCode);
			}
		}catch(Exception e) {
			DebugLog.print("EventController::s::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/*
	 * update Dairy Item
	 */

	@PostMapping("/updateEventItem")
	public ResponseEntity<String> updateEventItem(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		EventModel pi = new EventModel();

		pi.setId(jObj.getInt("id"));
		pi.setBranchId(jObj.getInt("branchId"));
		pi.setDate(jObj.getString("date"));
		pi.setTitle(jObj.getString("title"));
		pi.setDescription(jObj.getString("description"));
		pi.setImageUrl(jObj.getString("imageUrl"));

		int updatedBy = jObj.getInt("updatedBy");

		boolean result = dbHelper.updateEventItem(pi, updatedBy, jdbcTemplate);

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
			DebugLog.print("EventController::updateEventItem::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/**
	 * update Dairy Item status
	 */
	@GetMapping("/updateEventItemStatus")
	public ResponseEntity<String> updateEventItemStatus(@RequestParam("eventId") int eventId,
			@RequestParam("isActive") int isActive) {


		boolean result = dbHelper.updateEventItemStatus(eventId,  isActive, jdbcTemplate);

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
			DebugLog.print("EventController::updateEventItemStatus::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}


}




