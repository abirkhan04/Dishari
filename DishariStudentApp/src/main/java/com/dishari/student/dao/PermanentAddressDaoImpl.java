package com.dishari.student.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.dishari.student.model.PermanentAddress;
import com.dishari.student.model.PresentAddress;




public class PermanentAddressDaoImpl implements PermanentAddressDao {

	@Autowired
	SessionFactory sessionFactory;	
	
	
	@Override
	public int insertRow(PermanentAddress permanentAddress) {
		// TODO Auto-generated method stub
		  
			Session session = sessionFactory.openSession();
			Transaction tx =  session.beginTransaction();
			session.saveOrUpdate(permanentAddress);
			System.out.println("Inside Insert Row Student");
			tx.commit();
			session.close();
			return 0;
		}

	@Override
	public List<PermanentAddress> getListbyId(PermanentAddress permanentAddress) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PermanentAddress getRowByUserId(Long PermanentAddress_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateRow(PermanentAddress permanentAddress) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteRow(PermanentAddress permanentAddress) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<PermanentAddress> getListbyPermanentAddressId(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<PermanentAddress> getAllPermanentAddress() {
		// TODO Auto-generated method stub
		return null;
	  }
                  	     
}