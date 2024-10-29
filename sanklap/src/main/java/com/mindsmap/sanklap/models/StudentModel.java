package com.mindsmap.sanklap.models;

import com.mindsmap.sanklap.core.Utils;

public class StudentModel {


	private int id,
				isMale,
				isActive,
				branchId, standardId,
				batchId;

	private String regNo = "",
			firstName = "",
			lastName = "",
			fatherName = "",
			motherName = "",
			image = "",
			dob = "1970-01-02 00:00:00",
			motherTongue = "",
			nationality  = "",
			bloodGroup = "",
			dateOfJoining = "1970-01-02 00:00:00",
			dateOfLeaving = "1970-01-02 00:00:00",
			address = "",
			landmark  = "",
			city = "",
			state = "",
			country = "",
			pincode = "",
			stuEmailId = "",
			emailId  = "",
			mobileNo = "",
			altMobileNo = "",
			remarks = "",
			branchName = "";

	private BatchModel batchModel;




	public int getBatchId() {
		return batchId;
	}

	public void setBatchId(int batchId) {
		this.batchId = batchId;
	}

	public BatchModel getBatchModel() {
		return batchModel;
	}

	public void setBatchModel(BatchModel batchModel) {
		this.batchModel = batchModel;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getStandardId() {
		return standardId;
	}

	public void setStandardId(int standardId) {
		this.standardId = standardId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIsMale() {
		return isMale;
	}

	public void setIsMale(int isMale) {
		this.isMale = isMale;
	}

	public int getIsActive() {
		return isActive;
	}

	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}

	public int getBranchId() {
		return branchId;
	}

	public void setBranchId(int branchId) {
		this.branchId = branchId;
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

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = checkDate(dob);
	}

	public String getMotherTongue() {
		return motherTongue;
	}

	public void setMotherTongue(String motherTongue) {
		this.motherTongue = motherTongue;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public String getDateOfJoining() {
		return dateOfJoining;
	}

	public void setDateOfJoining(String dateOfJoining) {
		this.dateOfJoining = checkDate(dateOfJoining);
	}

	public String getDateOfLeaving() {
		return dateOfLeaving;
	}

	public void setDateOfLeaving(String dateOfLeaving) {
		this.dateOfLeaving = checkDate(dateOfLeaving);
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLandmark() {
		return landmark;
	}

	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getStuEmailId() {
		return stuEmailId;
	}

	public void setStuEmailId(String stuEmailId) {
		this.stuEmailId = stuEmailId;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getAltMobileNo() {
		return altMobileNo;
	}

	public void setAltMobileNo(String altMobileNo) {
		this.altMobileNo = altMobileNo;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	private String checkDate(String dateVal) {
		if(Utils.isEmpty(dateVal)) {
			return "1970-01-02 00:00:00";
		}
		return dateVal;
	}

}
