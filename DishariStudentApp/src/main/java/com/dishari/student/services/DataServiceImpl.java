package com.dishari.student.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dishari.student.dao.AddressDao;
import com.dishari.student.dao.BasicInformationDao;
import com.dishari.student.dao.ContactinfoDao;
import com.dishari.student.dao.GuardianDetailDao;
import com.dishari.student.dao.PermanentAddressDao;
import com.dishari.student.dao.PresentAddressDao;
import com.dishari.student.dao.ProgramOfStudyDao;
import com.dishari.student.dao.StudentDao;
import com.dishari.student.dao.StudentInfoDao;
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
import com.dishari.teacher.dao.TeacherBasicInfoDao;
import com.dishari.teacher.dao.TeacherEducationDao;
import com.dishari.teacher.dao.TeacherExperienceDao;



@Service
@Transactional
public class DataServiceImpl implements DataService {
	
	@Autowired
    StudentDao studentDao;
	
	@Autowired
	PresentAddressDao presentAddressDao;
	
	@Autowired
	PermanentAddressDao permanentAddressDao;
	
	@Autowired
	AddressDao addressDao;
	
	@Autowired
	GuardianDetailDao guardianDetailDao;
	
	
	@Autowired
	ContactinfoDao contactinfoDao;
	
	@Autowired
	BasicInformationDao basicInformationDao;
	
	@Autowired
	TeacherBasicInfoDao teacherBasicInfoDao;
	
	
	@Autowired
	ProgramOfStudyDao programOfStudyDao;
	
	@Autowired
	StudentInfoDao studentInfoDao;
	
	@Autowired
	TeacherEducationDao teacherEducationDao;
	
	@Autowired
	TeacherExperienceDao teacherExperienceDao;
	
	
	
	@Override
	public int insertRow(BasicInformation basicInformation) {
		// TODO Auto-generated method stub
		return basicInformationDao.insertRow(basicInformation);		
	}
	
	@Override
	public int insertRow(PresentAddress presentAddress) {
		// TODO Auto-generated method stub
		return presentAddressDao.insertRow(presentAddress);
	}

	@Override
	public int insertRow(PermanentAddress permanentAddress) {
		// TODO Auto-generated method stub
		return permanentAddressDao.insertRow(permanentAddress);
	}

	@Override
	public int insertRow(Address address) {
		// TODO Auto-generated method stub
		return addressDao.insertRow(address);
	}

	@Override
	public int insertRow(GuardianDetail guardianDetail) {
		// TODO Auto-generated method stub
		return guardianDetailDao.insertRow(guardianDetail) ;
	}

	@Override
	public int insertRow(Contactinfo contactinfo) {
		// TODO Auto-generated method stub
		return contactinfoDao.insertRow(contactinfo);
	}

	@Override
	public BasicInformation getStudentRowbyId(Long studentid) {
		// TODO Auto-generated method stub
		return studentDao.getRowByUserId(studentid);
	}

	@Override
	public int getRowsbyClassandGroup(String Class, String group) {
		// TODO Auto-generated method stub
		
		
		
		return basicInformationDao.getRowsbyClassandGroup(Class,group);
	}
	
	
	@Override
	public int insertRow(ProgramOfStudy programOfStudy) {
		// TODO Auto-generated method stub
		return programOfStudyDao.insertRow(programOfStudy);
	}

	@Override
	public int insertRow(StudentInfo studentInfo) {
		// TODO Auto-generated method stub
		return studentInfoDao.insertRow(studentInfo);
	}

	@Override
	public int insertRow(TeacherEducation teacherEducation) {
		// TODO Auto-generated method stub
		return teacherEducationDao.insertRow(teacherEducation);
	}

	
	@Override
	public int insertRow(TeacherExperience teacherExperience) {
		// TODO Auto-generated method stub
		return teacherExperienceDao.insertRow(teacherExperience);
	}

	@Override
	public int insertRow(TeacherBasicInfo teacherBasicInfo) {
		// TODO Auto-generated method stub
		return teacherBasicInfoDao.insertRow(teacherBasicInfo);
	}
}