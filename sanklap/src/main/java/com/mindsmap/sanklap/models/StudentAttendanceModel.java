package com.mindsmap.sanklap.models;

public class StudentAttendanceModel {

	private int attendanceId,
				batchId,
				studentId,
				batchStudentId,
				attendanceStatus;


	private String attendanceForDate = "",
					regNo = "",
					firstName = "",
					lastName = "",
					image = "";


	public int getBatchStudentId() {
		return batchStudentId;
	}


	public void setBatchStudentId(int batchStudentId) {
		this.batchStudentId = batchStudentId;
	}


	public int getAttendanceId() {
		return attendanceId;
	}


	public void setAttendanceId(int attendanceId) {
		this.attendanceId = attendanceId;
	}


	public int getBatchId() {
		return batchId;
	}


	public void setBatchId(int batchId) {
		this.batchId = batchId;
	}


	public int getStudentId() {
		return studentId;
	}


	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}


	public int getAttendanceStatus() {
		return attendanceStatus;
	}


	public void setAttendanceStatus(int attendanceStatus) {
		this.attendanceStatus = attendanceStatus;
	}


	public String getAttendanceForDate() {
		return attendanceForDate;
	}


	public void setAttendanceForDate(String attendanceForDate) {
		this.attendanceForDate = attendanceForDate;
	}


	public String getRegNo() {
		return regNo;
	}


	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}

}
