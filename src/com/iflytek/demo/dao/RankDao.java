package com.iflytek.demo.dao;

import java.util.List;

import com.iflytek.demo.model.Data;
import com.iflytek.demo.model.Paixu;
import com.iflytek.demo.model.Rank;
import com.iflytek.demo.model.mapdate;


public interface RankDao {
	
    public List<Rank> orderbyascaqi(String time);//最优排序
    public List<mapdate> map();//最优排序
	public List<Paixu> orderbydescaqi(String time);//最差排序
    public Rank citynum(String time, String city);
}


