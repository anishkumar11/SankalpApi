package com.mindsmap.sanklap.models;

public class ExamSubjectResultModel {

	private int id, examId,
				examSubjectId,
				studentId;

	private double scoredMarks;
	private String grade = "";

	private SubjectModel subject;

	public SubjectModel getSubject() {
		return subject;
	}

	public void setSubject(SubjectModel subject) {
		this.subject = subject;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getExamId() {
		return examId;
	}
	public void setExamId(int examId) {
		this.examId = examId;
	}
	public int getExamSubjectId() {
		return examSubjectId;
	}
	public void setExamSubjectId(int examSubjectId) {
		this.examSubjectId = examSubjectId;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public double getScoredMarks() {
		return scoredMarks;
	}
	public void setScoredMarks(double scoredMarks) {
		this.scoredMarks = scoredMarks;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}

}
