package com.mindsmap.sanklap.models;

public class BatchModel {
	private int id,
				standardId,
				teacherId,
				branchId,
				isActive = 1;

	private String batchName = "",
			batchStartDate = "",
			batchEndDate = "",
			branchName = "";

	private TeacherModel teacher;
	private StandardModel standard;




	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public int getIsActive() {
		return isActive;
	}

	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}

	public TeacherModel getTeacher() {
		return teacher;
	}

	public void setTeacher(TeacherModel teacher) {
		this.teacher = teacher;
	}

	public StandardModel getStandard() {
		return standard;
	}

	public void setStandard(StandardModel standard) {
		this.standard = standard;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getStandardId() {
		return standardId;
	}

	public void setStandardId(int standardId) {
		this.standardId = standardId;
	}

	public int getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}

	public int getBranchId() {
		return branchId;
	}

	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}

	public String getBatchName() {
		return batchName;
	}

	public void setBatchName(String batchName) {
		this.batchName = batchName;
	}

	public String getBatchStartDate() {
		return batchStartDate;
	}

	public void setBatchStartDate(String batchStartDate) {
		this.batchStartDate = batchStartDate;
	}

	public String getBatchEndDate() {
		return batchEndDate;
	}

	public void setBatchEndDate(String batchEndDate) {
		this.batchEndDate = batchEndDate;
	}


}
