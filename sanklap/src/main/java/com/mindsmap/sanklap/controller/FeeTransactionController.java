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
import com.mindsmap.sanklap.database.helper.FeeTransactionHelper;
import com.mindsmap.sanklap.models.FeeTransactionModel;

@CrossOrigin
@RestController
@RequestMapping("/api/feetransaction")
public class FeeTransactionController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private FeeTransactionHelper dbHelper = new FeeTransactionHelper();
	/*
	 * get Attendance list
	 */

	@GetMapping("/getTransactionList")
	public ResponseEntity<String> getTransactionList(@RequestParam("studentId") int studentId,
			@RequestParam("batchId") int batchId, @RequestParam("page") int page) {

		JSONObject response = new JSONObject();

		ArrayList<FeeTransactionModel> result =  dbHelper.getTransactionList(studentId, batchId, page, jdbcTemplate);

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
			DebugLog.print("FeeTransactionController::getTransactionList::Exception: " + e, false);
		}

		response.put("data", new JSONArray(jsonArray));
		response.put("message", msg);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	/*
	 * create fee transaction
	 */

	@PostMapping("/createFeeTransaction")
	public ResponseEntity<String> createFeeTransaction(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		FeeTransactionModel pi = new FeeTransactionModel();

		pi.setAmount(jObj.getDouble("amount"));
		pi.setPaymentDetail(jObj.getString("paymentDetail"));
		pi.setStudentId(jObj.getInt("studentId"));
		pi.setBatchId(jObj.getInt("batchId"));
		pi.setPaymentMode(jObj.getInt("paymentMode"));

		int result = dbHelper.createTransaction(pi, jdbcTemplate);

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
			DebugLog.print("FeeTransactionController::createFeeTransaction::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

	/*
	 * create fee transaction
	 */

	@PostMapping("/updateFeeTransaction")
	public ResponseEntity<String> updateFeeTransaction(@RequestBody String postData) {

		JSONObject jObj = new JSONObject(postData);

		FeeTransactionModel pi = new FeeTransactionModel();

		pi.setId(jObj.getInt("transactionId"));
		pi.setAmount(jObj.getDouble("amount"));
		pi.setPaymentDetail(jObj.getString("paymentDetail"));
		pi.setPaymentMode(jObj.getInt("paymentMode"));

		boolean result = dbHelper.updateTransaction(pi, jdbcTemplate);

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

				resObj.put("data", result);
				resObj.put("message", msg);
				resObj.put("statusCode", statusCode);
			}
		}catch(Exception e) {
			DebugLog.print("FeeTransactionController::updateFeeTransaction::Exception = "+e, true);
		}
		return new ResponseEntity<>(resObj.toString(), responseCode);
	}

}




