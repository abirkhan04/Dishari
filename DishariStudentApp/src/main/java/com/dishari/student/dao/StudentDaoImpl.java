package com.dishari.student.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Transaction;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.dishari.student.model.BasicInformation;

public class StudentDaoImpl implements StudentDao {

	@Autowired
	SessionFactory sessionFactory;
	private HibernateTemplate hibernateTemplate;
	
	
	
	public StudentDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public int insertRow(BasicInformation basicInformation) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tx =  session.beginTransaction();
		session.saveOrUpdate(basicInformation);
		System.out.println("Inside Insert Row Student");
		tx.commit();
		session.close();
		return 0;
	}

	@Override
	public List<BasicInformation> getListbyId(BasicInformation user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BasicInformation getRowByUserId(Long student_id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		BasicInformation basicInformation = (BasicInformation)session.load(BasicInformation.class, student_id);
		tx.commit();
		session.close();		
		return basicInformation;
	}

	@Override
	public int updateRow(BasicInformation user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteRow(BasicInformation user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<BasicInformation> getListbyUserId(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<BasicInformation> getAllUser() {
		// TODO Auto-generated method stub
		return null;
	}

}
