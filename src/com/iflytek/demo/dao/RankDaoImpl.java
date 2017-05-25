package com.iflytek.demo.dao;

import java.util.List;

import com.iflytek.demo.model.Rank;
import com.iflytek.demo.model.mapdate;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iflytek.demo.model.Data;
import com.iflytek.demo.model.Paixu;
@Repository
public class RankDaoImpl implements RankDao {
	@Autowired
	private SessionFactory sessionFactory;

	
	public List<Rank> orderbyascaqi(String time) {
		List<Rank> orlist = sessionFactory.getCurrentSession().createQuery("from Rank p where p.date = '"+time+"'").list();
		return orlist;
	}


	public List<mapdate> map() {
		List<mapdate> maplist = sessionFactory.getCurrentSession().createQuery("from mapdate").list();
		return maplist;
	}

	public List<Paixu> orderbydescaqi(String time) {
		List<Paixu> ordlist = sessionFactory.getCurrentSession().createQuery("from Paixu p where p.time = '"+time+"'").list();
		return ordlist;
	}

	@Override
	public Rank citynum(String time, String city) {
		List<Rank> ordlist = sessionFactory.getCurrentSession().createQuery("from Rank p where p.date = '" + time + "' and p.city ='" + city + "'").list();
		Rank ranlist = new Rank();
		for(Rank rank:ordlist){

			ranlist = new Rank(rank.getWid(), rank.getAircontion(), rank.getCity(), rank.getProvince(),rank.getAqi(), rank.getPm2(),rank.getDate());
		}
		return ranlist;
	}

}
