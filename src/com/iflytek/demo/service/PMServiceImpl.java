package com.iflytek.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iflytek.demo.dao.PMDao;
import com.iflytek.demo.model.City;
import com.iflytek.demo.model.Courier;
import com.iflytek.demo.model.Weather;

@Service
public class PMServiceImpl implements PMService {

	@Autowired
	private PMDao studao;
	

	public void addnew(Courier courier) {
		studao.addnew(courier);
		
	}

	public List<Courier> findcitynum(String newcity) {
		return studao.findcitynum(newcity);
	}

	
	public List<Courier> findcitynum2(String newcity,String jiance) {
		return studao.findcitynum2(newcity,jiance);
	}


	public void sendcity(Weather cit) {
		studao.sendcity(cit);
		
	}


	public int findcityid(String newcity) {
		// TODO Auto-generated method stub
		return studao.findcityid(newcity);
	}

	


}
