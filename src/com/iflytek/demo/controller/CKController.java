package com.iflytek.demo.controller;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iflytek.demo.model.*;
import com.iflytek.demo.service.PMService;
import com.iflytek.demo.service.RankService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CKController {

	@Autowired
	private PMService stuservice;
	@Autowired
	private RankService rankservice;

	@RequestMapping("/date")
	public void date(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
			String time = request.getParameter("time");
		String city = request.getParameter("city");
		char[] ch = city.toCharArray();
		int length = ch.length-1;
		String newcity= city.substring(0,length);
		String timel = time.replaceAll("/","-");
		try {
			Rank rankList =  rankservice.citynum(timel, newcity);
			net.sf.json.JSONArray array;
			array = net.sf.json.JSONArray.fromObject(rankList);
			response.getWriter().print(array);
			System.out.printf(array.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@RequestMapping("/map")
	public ModelAndView map(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		HttpSession session = request.getSession();
		String city = (String) session.getAttribute("city");
		session.setAttribute("city", city);
		char[] ch = city.toCharArray();
		int length = ch.length-1;
		String newcity= city.substring(0,length);
		List<Courier> pmnum = stuservice.findcitynum(newcity);

		ModelAndView mv = null;
		if(pmnum.size() == 0){
			mv = new ModelAndView("/woring.jsp");
			mv.addObject("city",city);
		}else{
			int avg = 0;
			int pm = 0;
			for (Courier courier : pmnum) {
				avg = avg + courier.getAqi();
				pm = pm + courier.getPm2_5();
			}
			int avgl = avg/pmnum.size();
			int pml = pm/pmnum.size();
			int cityid = stuservice.findcityid(newcity);
			String json = loadJson("http://api.jisuapi.com/weather/query?appkey=1af7ddfbf3e2bb21&cityid="+cityid);
			JSONObject object=JSONObject.fromObject(json);

			String city2 = object.getJSONObject("result").getString("city");
			String date = object.getJSONObject("result").getString("date");
			String img = object.getJSONObject("result").getString("img");
			String week = object.getJSONObject("result").getString("week");
			String temp = object.getJSONObject("result").getString("temp");
			String weather = object.getJSONObject("result").getString("weather");
			Weather wier = new Weather(city2,date,week,weather,temp,img);
			stuservice.sendcity(wier);
			Date date2=new Date();
			DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH");
			DateFormat format2=new SimpleDateFormat("yyyy-MM-dd HH:MM:SS");
			String time2=format2.format(date2);
			String time=format.format(date2);
			String newtime = "2017-05-24 13:00";
			List<Rank> rankList =  rankservice.orderbyascaqi(newtime);
			List<mapdate> orderlist = new ArrayList<>();
			mapdate map = new mapdate();
			for (Rank rank:rankList){
				map = new mapdate(rank.getCity(),rank.getPm2());
				orderlist.add(map);
			}
			net.sf.json.JSONArray array;
			array = net.sf.json.JSONArray.fromObject(orderlist);

			mv = new ModelAndView("/map.jsp");
			mv.addObject("time",time2);
			mv.addObject("city",city);
			mv.addObject("array",array);
			mv.addObject("avgl",avgl);
			mv.addObject("pml",pml);
			mv.addObject("pmnum",pmnum);
			mv.addObject("wier",wier);
		}
		return mv;
	}
	public static String loadJson (String url) {

		StringBuilder json = new StringBuilder();
		try {
			URL urlObject = new URL(url);

			URLConnection uc = urlObject.openConnection();
			BufferedReader in = new BufferedReader(new InputStreamReader(uc.getInputStream(),"UTF-8"));
			String inputLine = null;
			while ( (inputLine = in.readLine()) != null) {
				json.append(inputLine);
			}
			in.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return json.toString();

	}

}
