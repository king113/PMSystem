package com.iflytek.demo.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iflytek.demo.model.City;
import com.iflytek.demo.model.Courier;
import com.iflytek.demo.model.Weather;

@Repository
public class PMDaoImpl implements PMDao {

	@Autowired
	private SessionFactory sessionFactory;
	public void addnew(Courier courier) {
		sessionFactory.getCurrentSession().save(courier);
		
	}
	
	public List<Courier> findcitynum(String newcity) {
		List<Courier> couList = sessionFactory.getCurrentSession().createQuery("from Courier c where c.area = '"+newcity+"'").list();
		return couList;
	}
	
	public List<Courier> findcitynum2(String newcity,String jiance) {
		List<Courier> couList = sessionFactory.getCurrentSession().createQuery("from Courier c where c.position_name = '"+jiance+"' and c.area = '"+newcity+"'").list();
		return couList;
	}
	
	public void sendcity(Weather cit) {
		sessionFactory.getCurrentSession().save(cit);
		
	}
	
	public int findcityid(String newcity) {
		List<City> couList = sessionFactory.getCurrentSession().createQuery("from City c where c.city = '"+newcity+"'").list();
		int cityid = 0;
		for (City city : couList) {
			cityid = city.getCityid();
		}
		return cityid;
	}

	
}
