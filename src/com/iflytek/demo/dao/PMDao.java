package com.iflytek.demo.dao;

import java.util.List;

import com.iflytek.demo.model.City;
import com.iflytek.demo.model.Courier;
import com.iflytek.demo.model.Weather;


public interface PMDao {

	public void addnew(Courier courier);

	public List<Courier> findcitynum(String newcity);

	public List<Courier> findcitynum2(String newcity,String jiance);

	public void sendcity(Weather cit);

	public int findcityid(String newcity);

	
}
