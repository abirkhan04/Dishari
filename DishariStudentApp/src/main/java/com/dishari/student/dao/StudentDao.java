package com.dishari.student.dao;

import java.util.ArrayList;
import java.util.List;
import com.dishari.student.model.BasicInformation;

public interface StudentDao{
	
	public int insertRow(BasicInformation basicInformation);
	public List<BasicInformation> getListbyId(BasicInformation user);
	public BasicInformation getRowByUserId(Long student_id);
	public int updateRow(BasicInformation user);
	public int deleteRow(BasicInformation user);
	public List<BasicInformation> getListbyUserId(Long id);
	public ArrayList<BasicInformation> getAllUser();
	
}