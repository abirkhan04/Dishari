package com.dishari.student.dao;

import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.dishari.student.model.ProgramOfStudy;


public class ProgramOfStudyDaoImpl implements ProgramOfStudyDao{
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public int insertRow(ProgramOfStudy programOfStudy) {
		// TODO Auto-generated method stub		
		Session session = sessionFactory.openSession();
		Transaction tx =  session.beginTransaction();
		session.saveOrUpdate(programOfStudy);
		
		tx.commit();
		session.close();		      
		return 0;
	}   
}