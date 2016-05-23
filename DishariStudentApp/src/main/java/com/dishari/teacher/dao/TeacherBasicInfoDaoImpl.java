package com.dishari.teacher.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.dishari.teacher.model.TeacherBasicInfo;

public class TeacherBasicInfoDaoImpl implements TeacherBasicInfoDao {
	   
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public int insertRow(TeacherBasicInfo teacherBasicInfo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(teacherBasicInfo);
		System.out.println("Inside Insert Row TeacherEducation");
		tx.commit();
		session.close();
		return 0;
    }	       
}