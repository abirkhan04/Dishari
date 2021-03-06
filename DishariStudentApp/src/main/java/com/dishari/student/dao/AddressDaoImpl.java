package com.dishari.student.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.dishari.student.model.Address;


public class AddressDaoImpl implements AddressDao{
	
	@Autowired
	SessionFactory sessionFactory;	

	@Override
	public int insertRow(Address officeAddress) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tx =  session.beginTransaction();
		session.saveOrUpdate(officeAddress);
		System.out.println("Inside Insert Row Student");
		tx.commit();
		session.close();
		return 0;
	}	
}