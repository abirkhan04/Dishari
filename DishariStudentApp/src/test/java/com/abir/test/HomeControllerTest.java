package com.abir.test;

import static org.junit.Assert.*;

import java.time.Year;

import org.junit.Test;


public class HomeControllerTest {
	@Test
	public void TestSalutation() {
		// TODO Auto-generated method stub
		int year = Year.now().getValue();
	    String Year = Integer.toString(year).substring(2,4);	    
		  assertEquals("16",Year);	
		  //System.out.println(Year);
	}
}