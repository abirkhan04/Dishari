package com.dishari.student.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.dishari.student.model.Contactinfo;

public class ContactinfoDaoImpl implements ContactinfoDao{

	@Autowired
	SessionFactory sessionFactory;		
	
	@Override
	public int insertRow(Contactinfo contactinfo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tx =  session.beginTransaction();
		session.saveOrUpdate(contactinfo);
		System.out.println("Inside Insert Row Student");
		tx.commit();
		session.close();
		return 0;
	}
}