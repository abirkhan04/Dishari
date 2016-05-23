package com.dishari.student.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.dishari.student.model.PresentAddress;


public class PresentAddressDaoImpl implements PresentAddressDao {
	
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public int insertRow(PresentAddress presentAddress) {
		Session session = sessionFactory.openSession();
		Transaction tx =  session.beginTransaction();
		session.saveOrUpdate(presentAddress);
		System.out.println("Inside Insert Row Student");
		tx.commit();
		session.close();
		return 0;
	}

	
	@Override
	public List<PresentAddress> getListbyId(PresentAddress presentAddress) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PresentAddress getRowByUserId(Long PresentAddress_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateRow(PresentAddress presentAddress) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteRow(PresentAddress presentAddress) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<PresentAddress> getListbyPresentAddressId(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<PresentAddress> getAllPresentAddress() {
		// TODO Auto-generated method stub
		return null;
	}

}