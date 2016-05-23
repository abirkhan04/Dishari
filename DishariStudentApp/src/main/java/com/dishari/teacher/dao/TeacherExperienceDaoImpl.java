package com.dishari.teacher.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.dishari.teacher.model.TeacherExperience;

public class TeacherExperienceDaoImpl implements TeacherExperienceDao {
	@Autowired
	SessionFactory sessionFactory;
	
	public int insertRow(TeacherExperience teacherExperience){
	Session session = sessionFactory.openSession();
	Transaction tx = session.beginTransaction();
	session.saveOrUpdate(teacherExperience);
	System.out.println("Inside Insert Row TeacherEducation");
	tx.commit();
	session.close();
	return 0;	
   }
}