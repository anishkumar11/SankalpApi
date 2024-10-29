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
import com.mindsmap.sanklap.core.Utils;
import com.mindsmap.sanklap.database.helper.RegisterHelper;
import com.mindsmap.sanklap.models.StudentModel;

@CrossOrigin
@RestController
@RequestMapping("/api/register")
public class RegisterController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private RegisterHelper dbHelper = new RegisterHelper();
	/*
	 * get Attendance list
	 */

	@PostMapping("/createStudent")
	public ResponseEntity<String> createStudent(@RequestBody String postData) {

		ArrayList<StudentModel> list = new ArrayList<StudentModel>();

		JSONObject response = new JSONObject();

		try {
			JSONObject jObj = new JSONObject(postData);
			String branchName = "Cubs Inamdar Vijayapura";
			int branchId;
			if(jObj.has(branchName)){

				branchId = 1;
				parseStudent(list, jObj, branchName, branchId);

	        }

			branchName = "Cubs Jalnagar Vijayapura";
			if(jObj.has(branchName)){

				branchId = 2;
				parseStudent(list, jObj, branchName, branchId);

	        }

		}catch(Exception e) {
			DebugLog.print("RegisterController::createStudent::Exception_1: " + e, false);
		}

		int count = 0;
		for(StudentModel pi : list) {
			if(dbHelper.createStudent(pi, jdbcTemplate) > 0) {
				count++;
			}
		}
		String log = "Total Student::list.size() = " + list.size();
		log = log+"\n"+"Total Student inserted::count = " + count;
		DebugLog.print("Total Student::list.size() = " + list.size(), false);
		DebugLog.print("Total Student inserted::count = " + count, false);

		boolean result =  true;

		String msg = "Fail";
		int statusCode = 400;
		HttpStatus responseCode = HttpStatus.BAD_REQUEST;
		if(result) {
			msg = "Success";
			statusCode = 200;
			responseCode = HttpStatus.OK;

		}

		/*ObjectMapper objectMapper = new ObjectMapper();
	    String jsonArray = "{}";
		try {
			jsonArray = objectMapper.writeValueAsString(result);
		} catch (JsonProcessingException e) {
			DebugLog.print("RegisterController::createStudent::Exception: " + e, false);
		}

		response.put("data", new JSONObject(jsonArray));*/
		response.put("message", msg+"\n"+log);
		response.put("statusCode", statusCode);

		return new ResponseEntity<>(response.toString(), responseCode);
	}

	private void parseStudent(ArrayList<StudentModel> list, JSONObject jObj, String branchName, int branchId) {
		try {
			JSONArray jArr = jObj.getJSONArray(branchName);
            for (int i = 0; i < jArr.length(); i++) {
                JSONObject obj = jArr.getJSONObject(i);
                StudentModel pi = new StudentModel();
                pi.setBranchId(branchId);
                pi.setIsActive(1);

                try {
                	if(obj.has("Student Regn No")) {
                    	pi.setRegNo(obj.getString("Student Regn No"));
                    }
                }catch(Exception e) {
                }


                try {
                	if(obj.has("Gender")) {
                    	if(obj.getString("Gender").equalsIgnoreCase("male")) {
                    		pi.setIsMale(1);
                    	}
                    	pi.setIsMale(0);
                    }
                }catch(Exception e) {
                }

                try {
                	if(obj.has("Student Name")) {
                    	pi.setFirstName(obj.getString("Student Name"));
                    }
                }catch(Exception e) {
                }

                try {
                	if(obj.has("Child Name")) {
                    	pi.setFirstName(obj.getString("Child Name"));
                    }
                }catch(Exception e) {
                }



                try {
                	if(obj.has("Child Middle Name")) {
                    	pi.setLastName(obj.getString("Child Middle Name"));
                    }
                }catch(Exception e) {
                }

                try {
                	if(obj.has("Child Last Name")) {
                    	String lastName = pi.getLastName();
                    	String name = obj.getString("Child Last Name");
                    	if(Utils.isEmpty(lastName)) {
                    		lastName = name;
                    	}else {
                    		lastName = lastName + " "+name;
                    	}
                    	pi.setLastName(lastName);
                    }
                }
                catch(Exception e) {
                }


                try {
                	if(obj.has("Class")) {
                    	//pi.setFirstName(obj.getString("Class"));
                    }
                }catch(Exception e) {}


                try {
                	if(obj.has("D0B")) {
                    	pi.setDob(Utils.getDOB(obj.getString("D0B")));
                    }
                }catch(Exception e) {}


                try {
                	if(obj.has("Blood Group")) {
                    	pi.setBloodGroup(obj.getString("Blood Group"));
                    }
                }catch(Exception e) {}


                try {
                	if(obj.has("Mother Tongue")) {
                    	pi.setMotherTongue(obj.getString("Mother Tongue"));
                    }
                }catch(Exception e) {}

                try {
                	if(obj.has("Father Name")) {
                    	pi.setFatherName(obj.getString("Father Name"));
                    }
                }catch(Exception e) {}

                try {
                	if(obj.has("Father Last Name")) {
                    	String lastName = pi.getFatherName();
                    	String name = obj.getString("Father Last Name");

                    	if(Utils.isEmpty(lastName)) {
                    		lastName = name;
                    	}else {
                    		lastName = lastName + " "+name;
                    	}
                    	pi.setFatherName(lastName);
                    }
                }catch(Exception e) {}

                try {
                	if(obj.has("Mother Name")) {
                    	pi.setMotherName(obj.getString("Mother Name"));
                    }
                }catch(Exception e) {}


                try {
                	if(obj.has("Mother Last Name")) {
                    	String lastName = pi.getMotherName();
                    	String name = obj.getString("Mother Last Name");

                    	if(Utils.isEmpty(lastName)) {
                    		lastName = name;
                    	}else {
                    		lastName = lastName + " "+name;
                    	}
                    	pi.setMotherName(lastName);
                    }
                }catch(Exception e) {}

                try {
                	if(obj.has("Father Mobile No")) {
                    	pi.setMobileNo(obj.getString("Father Mobile No"));
                    }
                }catch(Exception e) {}

                try {
                	if(obj.has("Father Mobile No.")) {
                    	pi.setMobileNo(obj.getString("Father Mobile No."));
                    }
                }catch(Exception e) {}


                try {
                	if(obj.has("Mother MobileNo.")) {
                    	pi.setAltMobileNo(obj.getString("Mother MobileNo."));
                    }
                }catch(Exception e) {}

                try {
                	if(obj.has("Mother MobileNo")) {
                    	pi.setAltMobileNo(obj.getString("Mother MobileNo"));
                    }
                }catch(Exception e) {}



                list.add(pi);
            }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			DebugLog.print("RegisterController::parseStudent::Exception: " + e, false);
		}

	}

}



