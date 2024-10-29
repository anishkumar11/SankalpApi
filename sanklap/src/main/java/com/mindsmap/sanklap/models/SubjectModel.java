package com.mindsmap.sanklap.models;

public class SubjectModel {

	private int id, standardId, totalTopics, totalTopicCompleted;
	private String subjectName = "";



	public int getTotalTopics() {
		return totalTopics;
	}
	public void setTotalTopics(int totalTopics) {
		this.totalTopics = totalTopics;
	}
	public int getTotalTopicCompleted() {
		return totalTopicCompleted;
	}
	public void setTotalTopicCompleted(int totalTopicCompleted) {
		this.totalTopicCompleted = totalTopicCompleted;
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
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
}
