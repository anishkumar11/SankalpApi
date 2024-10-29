package com.mindsmap.sanklap.models;

public class StudentFeeModel {

	private int studentId, batchId, branchId, standardId;
	private String firstName = "",
			lastName = "",
			regNo = "",
			image = "",
			branchName = "",
			standardName = "",
			batchName = "";


	private double totalAmount,
	totalPaidAmount,
	totalPendingAmount;




	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}


	public String getBatchName() {
		return batchName;
	}


	public void setBatchName(String batchName) {
		this.batchName = batchName;
	}


	public int getStudentId() {
		return studentId;
	}


	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}


	public int getBatchId() {
		return batchId;
	}


	public void setBatchId(int batchId) {
		this.batchId = batchId;
	}


	public int getBranchId() {
		return branchId;
	}


	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}


	public int getStandardId() {
		return standardId;
	}


	public void setStandardId(int standardId) {
		this.standardId = standardId;
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


	public String getRegNo() {
		return regNo;
	}


	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}


	public String getBranchName() {
		return branchName;
	}


	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}


	public String getStandardName() {
		return standardName;
	}


	public void setStandardName(String standardName) {
		this.standardName = standardName;
	}


	public double getTotalAmount() {
		return totalAmount;
	}


	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}


	public double getTotalPaidAmount() {
		return totalPaidAmount;
	}


	public void setTotalPaidAmount(double paidAmount) {
		this.totalPaidAmount = paidAmount;
	}


	public double getTotalPendingAmount() {
		return totalPendingAmount;
	}


	public void setTotalPendingAmount(double pendingAmount) {
		this.totalPendingAmount = pendingAmount;
	}



}
