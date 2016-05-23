package com.dishari.student.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.dishari.student.model.StudentInfo;

public class StudentInfoDaoImpl implements StudentInfoDao {

	@Autowired
	SessionFactory sessionFactory;
	
	
	@Override
	public int insertRow(StudentInfo studentInfo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tx =  session.beginTransaction();
		session.saveOrUpdate(studentInfo);
		System.out.println("Inside Insert Row Student");
		tx.commit();
		session.close();
		return 0;		
	}
}