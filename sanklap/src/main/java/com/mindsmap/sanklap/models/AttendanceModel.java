package com.mindsmap.sanklap.models;

public class AttendanceModel {

	private int id,
	updatedBy,
	createdBy,
	attendance,
	studentId;

	private String attendanceForDate = "";

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUpdatedBy() {
		return updatedBy;
	}

	public void setUpdatedBy(int updatedBy) {
		this.updatedBy = updatedBy;
	}

	public int getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}

	public int getAttendance() {
		return attendance;
	}

	public void setAttendance(int attendance) {
		this.attendance = attendance;
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getAttendanceForDate() {
		return attendanceForDate;
	}

	public void setAttendanceForDate(String attendanceForDate) {
		this.attendanceForDate = attendanceForDate;
	}



}
