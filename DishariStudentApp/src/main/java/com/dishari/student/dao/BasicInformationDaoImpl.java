package com.dishari.student.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.dishari.student.model.BasicInformation;

public class BasicInformationDaoImpl implements BasicInformationDao{

	
	@Autowired
	SessionFactory sessionFactory;	

	
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
	public int getRowsbyClassandGroup(String Class, String group) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tx =  session.beginTransaction();
		Query query = session.createQuery("From BasicInformation where Clss='"+Class+"'and groupname='"+group+"'");				
		//query.setParameter("Class",Class);
	    //query.setParameter("Group",group);
	    List<BasicInformation> returnedRows = query.list();
	    int numofrows = returnedRows.size();	    
	    return numofrows;	    
    }
}