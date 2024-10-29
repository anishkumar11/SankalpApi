package com.mindsmap.sanklap.models;

import com.mindsmap.sanklap.core.TicketStatus;

public class TicketModel {

	private int id, student_id,
	status, branchId;

	private String title = "",
			message = "",
			comment = "",
			createdAt = "",
			updatedAt = "",
			statusLabl = "";

	public int getBranchId() {
		return branchId;
	}

	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}

	public String getStatusLabl() {
		return statusLabl;
	}

	public void setStatusLabl(String statusLabl) {
		this.statusLabl = statusLabl;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getStudent_id() {
		return student_id;
	}

	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
		if(this.status == TicketStatus.STATUS_CREATED) {
			setStatusLabl("Created");
		}else if(this.status == TicketStatus.STATUS_IN_REVIEW) {
			setStatusLabl("In Review");
		}else if(this.status == TicketStatus.STATUS_RESOLVED) {
			setStatusLabl("Resolved");
		}
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}

	public String getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(String updatedAt) {
		this.updatedAt = updatedAt;
	}



}
