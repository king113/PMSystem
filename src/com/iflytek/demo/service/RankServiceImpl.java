package com.iflytek.demo.service;

import java.util.List;

import com.iflytek.demo.model.Rank;
import com.iflytek.demo.model.mapdate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iflytek.demo.dao.RankDao;
import com.iflytek.demo.model.Data;
import com.iflytek.demo.model.Paixu;

@Service
public class RankServiceImpl implements RankService {

	@Autowired
	private RankDao rankdao;
	
	
	public List<Rank> orderbyascaqi(String time) {
		
		return rankdao.orderbyascaqi(time);
	}


	public List<mapdate> map() {
		return rankdao.map();
	}


	public List<Paixu> orderbydescaqi(String time) {
		
		return rankdao.orderbydescaqi(time);
	}

	@Override
	public Rank citynum(String time, String city) {
		return rankdao.citynum(time, city);
	}


}
