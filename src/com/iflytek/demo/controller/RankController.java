package com.iflytek.demo.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.iflytek.demo.model.Rank;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iflytek.demo.model.Data;
import com.iflytek.demo.model.Paixu;
import com.iflytek.demo.service.RankService;

@Controller
public class RankController {
	
	@Autowired
	private RankService rankservice;
	
	@RequestMapping("/order") //最优排序
	public ModelAndView Ordeascr(HttpServletRequest request){
		Date date=new Date();
		  DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH");
		  String time=format.format(date);
		  String newtime = time+":00";
		  System.out.println(newtime);
		List<Rank> orderlist = rankservice.orderbyascaqi(newtime);
		System.out.println(orderlist.toString());
		ModelAndView mv = new ModelAndView("/rank.jsp");
		mv.addObject("orderlist",orderlist);
		System.out.println("orderlist:"+orderlist);
		return mv;
	}
	@RequestMapping("order2")  //最差排序
	public ModelAndView OrderDesc(HttpServletRequest request){
		List<Paixu> ordlist = rankservice.orderbydescaqi("2017-04-25 08:00");//获取到网页拿到的时间
		ModelAndView mv = new ModelAndView("/rank.jsp");
		return mv;
	}
	
	
	
	

}
