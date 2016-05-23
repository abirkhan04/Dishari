package com.dishari.student.dao;

import java.util.ArrayList;
import java.util.List;

import com.dishari.student.model.PermanentAddress;

public interface PermanentAddressDao{
	 public int insertRow(PermanentAddress  permanentAddress);
	 public List<PermanentAddress> getListbyId(PermanentAddress permanentAddress);
	 public PermanentAddress getRowByUserId(Long PermanentAddress_id);
	 public int updateRow(PermanentAddress permanentAddress);
	 public int deleteRow(PermanentAddress permanentAddress);
	 public List<PermanentAddress> getListbyPermanentAddressId(Long id);
	 public ArrayList<PermanentAddress> getAllPermanentAddress();        
}