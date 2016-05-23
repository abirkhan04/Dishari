package com.dishari.student.services;

import com.dishari.student.model.Address;
import com.dishari.student.model.Contactinfo;
import com.dishari.student.model.GuardianDetail;
import com.dishari.student.model.PermanentAddress;
import com.dishari.student.model.PresentAddress;
import com.dishari.student.model.BasicInformation;
import com.dishari.student.model.ProgramOfStudy;
import com.dishari.student.model.StudentInfo;
import com.dishari.teacher.model.TeacherBasicInfo;
import com.dishari.teacher.model.TeacherEducation;
import com.dishari.teacher.model.TeacherExperience;


public interface DataService {
	int insertRow(BasicInformation basicInformation);
	int insertRow(PresentAddress presentAddress);
	int insertRow(PermanentAddress permanentAddress);
	int insertRow(Address address);
	int insertRow(GuardianDetail guardianDetail);
	int insertRow(Contactinfo contactinfo);
	BasicInformation getStudentRowbyId(Long studentid);
	int getRowsbyClassandGroup(String Class,String Group);
	int insertRow(ProgramOfStudy programOfStudy);
	int insertRow(StudentInfo studentInfo);	
	int insertRow(TeacherEducation teacherEducation);
	int insertRow(TeacherExperience teacherExperience);
	int insertRow(TeacherBasicInfo teacherBasicInfo);
	
}