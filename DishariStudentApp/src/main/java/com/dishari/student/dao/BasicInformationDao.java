package com.dishari.student.dao;

import com.dishari.student.model.BasicInformation;

public interface BasicInformationDao {
	 public int  insertRow(BasicInformation basicInformation);
	 public int getRowsbyClassandGroup(String Class, String group);	
	
}