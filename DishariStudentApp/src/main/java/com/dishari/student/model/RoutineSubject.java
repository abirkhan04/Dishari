package com.dishari.student.model;

public class RoutineSubject {
	private String   Teacher;
	private String   Subject;
    private boolean   isExam;
    public String Syllabus;
    public String getTeacher() {
		return Teacher;
	}
	
	public void setTeacher(String teacher) {
		Teacher = teacher;
	}
	
	public String getSubject() {
		return Subject;
	}
	
	public void setSubject(String subject) {
		Subject = subject;
	}
	
	public boolean  isExam() {
		return isExam;
	}

	public void setExam(boolean isExam) {
		this.isExam = isExam;
	}

	public String getSyllabus() {
		return Syllabus;
	}

	public void setSyllabus(String syllabus) {
		Syllabus = syllabus;
	}			
}