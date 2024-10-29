package com.mindsmap.sanklap.models;

public class BatchStudentModel {

	private int batchStudentId,
				batchId,
				studentId;


	private StudentModel studentModel;
	private AttendanceModel attendanceModel;




	public AttendanceModel getAttendanceModel() {
		return attendanceModel;
	}

	public void setAttendanceModel(AttendanceModel attendanceModel) {
		this.attendanceModel = attendanceModel;
	}

	public StudentModel getStudentModel() {
		return studentModel;
	}

	public void setStudentModel(StudentModel studentModel) {
		this.studentModel = studentModel;
	}

	public int getBatchStudentId() {
		return batchStudentId;
	}

	public void setBatchStudentId(int batchStudentId) {
		this.batchStudentId = batchStudentId;
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



}
