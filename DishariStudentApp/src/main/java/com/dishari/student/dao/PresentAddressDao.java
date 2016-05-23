package com.dishari.student.dao;

import java.util.ArrayList;
import java.util.List;

import com.dishari.student.model.PresentAddress;

public interface PresentAddressDao {
	
	public int insertRow(PresentAddress presentAddress);
	public List<PresentAddress> getListbyId(PresentAddress presentAddress);
	public PresentAddress getRowByUserId(Long PresentAddress_id);
	public int updateRow(PresentAddress presentAddress);
	public int deleteRow(PresentAddress presentAddress);
	public List<PresentAddress> getListbyPresentAddressId(Long id);
	public ArrayList<PresentAddress> getAllPresentAddress();
	  	
}