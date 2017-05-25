package com.iflytek.demo.service;

import java.util.List;

import com.iflytek.demo.model.Data;
import com.iflytek.demo.model.Paixu;
import com.iflytek.demo.model.Rank;
import com.iflytek.demo.model.mapdate;


public interface RankService {
	
    public List<Rank> orderbyascaqi(String time);
    public List<mapdate> map();
	public List<Paixu> orderbydescaqi(String time);
    public Rank citynum(String time, String city);
    
}
