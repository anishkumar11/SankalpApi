package com.mindsmap.sanklap.models;

public class OverallAttendanceModel {

	private int totalWorkingDays,
			    totalPresentDays,
			    totalAbsentDays,
			    totalLeaveDays;

	public int getTotalWorkingDays() {
		return totalWorkingDays;
	}

	public void setTotalWorkingDays(int totalWorkingDays) {
		this.totalWorkingDays = totalWorkingDays;
	}

	public int getTotalPresentDays() {
		return totalPresentDays;
	}

	public void setTotalPresentDays(int totalPresentDays) {
		this.totalPresentDays = totalPresentDays;
	}

	public int getTotalAbsentDays() {
		return totalAbsentDays;
	}

	public void setTotalAbsentDays(int totalAbsentDays) {
		this.totalAbsentDays = totalAbsentDays;
	}

	public int getTotalLeaveDays() {
		return totalLeaveDays;
	}

	public void setTotalLeaveDays(int totalLeaveDays) {
		this.totalLeaveDays = totalLeaveDays;
	}



}
