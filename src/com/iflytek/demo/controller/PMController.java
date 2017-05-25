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
import net.sf.json.JSONObject;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iflytek.demo.service.PMService;
import com.iflytek.demo.service.RankService;

@Controller
public class PMController {

	@Autowired
	private PMService stuservice;
	@Autowired
	private RankService rankservice;
	
	@RequestMapping("/ad_index")
	public ModelAndView First_index(HttpServletRequest request) throws IOException{
	
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


			mv = new ModelAndView("/ad_index.jsp");
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

	@RequestMapping("/ad_indexl")
	public ModelAndView ad_indexl(HttpServletRequest request) throws IOException{
		String city = request.getParameter("city");
		HttpSession session = request.getSession();
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
			String newtime = "2017-05-18 17:00";
			List<Rank> rankList =  rankservice.orderbyascaqi(newtime);
			List<mapdate> orderlist = new ArrayList<>();
			mapdate map = new mapdate();
			for (Rank rank:rankList){
				map = new mapdate(rank.getCity(),rank.getPm2());
				orderlist.add(map);
			}
			net.sf.json.JSONArray array;
			array = net.sf.json.JSONArray.fromObject(orderlist);


			mv = new ModelAndView("/ad_index.jsp");
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

	public ModelAndView ad_indexlph(HttpServletRequest request) throws IOException{
		String city = new String(request.getParameter("city").getBytes("ISO-8859-1"),"UTF-8");
		HttpSession session = request.getSession();
		session.setAttribute("city", city);
		char[] ch = city.toCharArray();
		int length = ch.length-1;
		String newcity = city.substring(0,length);
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
			 System.out.println(json);
			 String city2 = object.getJSONObject("result").getString("city");
			 String date = object.getJSONObject("result").getString("date");
			 String img = object.getJSONObject("result").getString("img");
			 String week = object.getJSONObject("result").getString("week");
			 String temp = object.getJSONObject("result").getString("temp");
			 String weather = object.getJSONObject("result").getString("weather");
			 Weather wier = new Weather(city2,date,week,weather,temp,img);
			 stuservice.sendcity(wier);
			mv = new ModelAndView("/phindex.jsp");
			mv.addObject("city",city);
			mv.addObject("avgl",avgl);
			mv.addObject("pml",pml);
			mv.addObject("pmnum",pmnum);
			mv.addObject("wier",wier);
		}
		return mv;
	}
	
	@RequestMapping("/ad_index2")
	public ModelAndView First_index2(HttpServletRequest request) throws IOException{
		String city = new String(request.getParameter("city").getBytes("ISO-8859-1"),"UTF-8");
		HttpSession session = request.getSession();
		session.setAttribute("city", city);
		char[] ch = city.toCharArray();
		int length = ch.length-1;
		String newcity = city.substring(0,length);
		List<Courier> pmnum = stuservice.findcitynum(newcity);
		String jiance =  new String(request.getParameter("jiance").getBytes("ISO-8859-1"),"UTF-8");
		System.out.println(jiance);
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
		List<Courier> pmnum2 = stuservice.findcitynum2(newcity,jiance);
		ModelAndView mv = new ModelAndView("/jiance_index.jsp");
		mv.addObject("city",city);
		mv.addObject("pmnum2",pmnum2);
		mv.addObject("pmnum",pmnum);
		mv.addObject("wier",wier);
		return mv;
	}@RequestMapping("/ph_index2")
	public ModelAndView ph_index2(HttpServletRequest request) throws IOException{
		String city = new String(request.getParameter("city").getBytes("ISO-8859-1"),"UTF-8");
		HttpSession session = request.getSession();
		session.setAttribute("city", city);
		char[] ch = city.toCharArray();
		int length = ch.length-1;
		String newcity = city.substring(0,length);
		List<Courier> pmnum = stuservice.findcitynum(newcity);
		String jiance =  new String(request.getParameter("jiance").getBytes("ISO-8859-1"),"UTF-8");
		int cityid = stuservice.findcityid(newcity);
		  String json = loadJson("http://api.jisuapi.com/weather/query?appkey=1af7ddfbf3e2bb21&cityid="+cityid);
		 JSONObject object=JSONObject.fromObject(json);
		 System.out.println(json);
		 String city2 = object.getJSONObject("result").getString("city");
		 String date = object.getJSONObject("result").getString("date");
		 String img = object.getJSONObject("result").getString("img");
		 String week = object.getJSONObject("result").getString("week");
		 String temp = object.getJSONObject("result").getString("temp");
		 String weather = object.getJSONObject("result").getString("weather");
		 Weather wier = new Weather(city2,date,week,weather,temp,img);
		 stuservice.sendcity(wier);
		List<Courier> pmnum2 = stuservice.findcitynum2(newcity,jiance);
		ModelAndView mv = new ModelAndView("/jiance_phindex.jsp");
		mv.addObject("city",city);
		mv.addObject("pmnum2",pmnum2);
		mv.addObject("wier",wier);
		mv.addObject("pmnum",pmnum);
		return mv;
	}
	@RequestMapping("/jiance")
	public ModelAndView jiance(HttpServletRequest request) throws IOException{
		HttpSession session = request.getSession();
		String city = (String) session.getAttribute("city");
		System.out.println(city);
		char[] ch = city.toCharArray();
		int length = ch.length-1;
		String newcity = city.substring(0,length);
		List<Courier> pmnum = stuservice.findcitynum(newcity);
		int avg = 0;
		for (Courier courier : pmnum) {
			avg = avg + courier.getAqi();
		}
		int avgl = avg/pmnum.size();
		int cityid = stuservice.findcityid(newcity);
		  String json = loadJson("http://api.jisuapi.com/weather/query?appkey=1af7ddfbf3e2bb21&cityid="+cityid);
		 JSONObject object=JSONObject.fromObject(json);
		 System.out.println(json);
		 String city2 = object.getJSONObject("result").getString("city");
		 String date = object.getJSONObject("result").getString("date");
		 String img = object.getJSONObject("result").getString("img");
		 String week = object.getJSONObject("result").getString("week");
		 String temp = object.getJSONObject("result").getString("temp");
		 String weather = object.getJSONObject("result").getString("weather");
		 Weather wier = new Weather(city2,date,week,weather,temp,img);
		 stuservice.sendcity(wier);
		ModelAndView mv = new ModelAndView("/jiance.jsp");
		mv.addObject("city",city);
		mv.addObject("wier",wier);
		mv.addObject("avgl",avgl);
		return mv;
	}
	@RequestMapping("/phone_rank")
	public ModelAndView phone_rank(HttpServletRequest request) throws IOException{
		HttpSession session = request.getSession();
		String city = (String) session.getAttribute("city");
		char[] ch = city.toCharArray();
		int length = ch.length-1;
		String newcity = city.substring(0,length);
		List<Courier> pmnum = stuservice.findcitynum(newcity);
		int avg = 0;
		int pm = 0;
		for (Courier courier : pmnum) {
			avg = avg + courier.getAqi();
			pm = pm + courier.getPm2_5();
		}
		int avgl = avg/pmnum.size();
		int pml = pm/pmnum.size();
		List<Rank> orderlist = rankservice.orderbyascaqi("2017-04-25 08:00");
		System.out.println(orderlist.toString());
		ModelAndView mv = new ModelAndView("/phone_rank.jsp");
		mv.addObject("orderlist",orderlist);
		System.out.println("orderlist:"+orderlist);
		mv.addObject("city",city);
		mv.addObject("avgl",avgl);
		mv.addObject("pml",pml);
		mv.addObject("pmnum",pmnum);
		return mv;
	}
	
	@RequestMapping("/phone_index")
	public ModelAndView phone_index(HttpServletRequest request) throws IOException{
	
		HttpSession session = request.getSession();
		String city = (String) session.getAttribute("city");
		session.setAttribute("city", city);
		char[] ch = city.toCharArray();
		int length = ch.length-1;
		String newcity = city.substring(0,length);
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
			 System.out.println(json);
			 String city2 = object.getJSONObject("result").getString("city");
			 String date = object.getJSONObject("result").getString("date");
			 String img = object.getJSONObject("result").getString("img");
			 String week = object.getJSONObject("result").getString("week");
			 String temp = object.getJSONObject("result").getString("temp");
			 String weather = object.getJSONObject("result").getString("weather");
			 Weather wier = new Weather(city2,date,week,weather,temp,img);
			 stuservice.sendcity(wier);
			mv = new ModelAndView("/phindex.jsp");
			mv.addObject("city",city);
			mv.addObject("avgl",avgl);
			mv.addObject("pml",pml);
			mv.addObject("pmnum",pmnum);
			mv.addObject("wier",wier);
		}
		return mv;
	}
	@RequestMapping("/ph_index")
	public ModelAndView ph_index(HttpServletRequest request) throws IOException{
	
		HttpSession session = request.getSession(); 
		String city = (String) session.getAttribute("city");
		session.setAttribute("city", city);
		char[] ch = city.toCharArray();
		int length = ch.length-1;
		String newcity = city.substring(0,length);
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
			System.out.println(avgl+" "+avg+" "+pmnum.size());
			mv = new ModelAndView("/ad_index.jsp");
			mv.addObject("city",city);
			mv.addObject("avgl",avgl);
			mv.addObject("pml",pml);
			mv.addObject("pmnum",pmnum);
		}
		return mv;
	}
	
	public static String readTxtFile(String Path){
    	BufferedReader reader = null;
		String laststr = "";
		try{
			FileInputStream fileInputStream = new FileInputStream(Path);
			InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream,"gbk");
			reader = new BufferedReader(inputStreamReader);
			String tempString = null;
			while((tempString = reader.readLine()) != null){
				laststr += tempString;
			}
			reader.close();
		}catch(IOException e){
			e.printStackTrace();
		}finally{
			if(reader != null){
				try {
					reader.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return laststr;
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
	
	@RequestMapping("/rot")
	public void rot(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		request.setCharacterEncoding("GBK");
		response.setCharacterEncoding("UTF-8");

		String text = request.getParameter("text");

		String urlString = "http://www.tuling123.com/openapi/api?key=b4914882d164474eaf58c754481220c7&info="
				+ text;
		StringBuffer sb = new StringBuffer();
		try {
			URL url = new URL(urlString);
			URLConnection connection = url.openConnection();
			BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"));
			String line = "";

			while ((line = br.readLine()) != null) {
				sb.append(line);
			}
			System.out.println(sb);
			br.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		response.getWriter().print(sb);
	}
}
