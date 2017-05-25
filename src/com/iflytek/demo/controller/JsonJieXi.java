package com.iflytek.demo.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class JsonJieXi {
	
	public static void Jsou(){
		
		String json = loadJson("http://api.jisuapi.com/weather/query?appkey=1af7ddfbf3e2bb21&cityid=48");
		 JSONObject object=JSONObject.fromObject(json);
		 System.out.println(json);
		 String city2 = object.getJSONObject("result").getString("city");
		 String date = object.getJSONObject("result").getString("date");
		 String img = object.getJSONObject("result").getString("img");
		 String week = object.getJSONObject("result").getString("week");
		 String temp = object.getJSONObject("result").getString("temp");
		 String weather = object.getJSONObject("result").getString("weather");
		 String humidity = object.getJSONObject("result").getString("humidity");
		 String winddirect = object.getJSONObject("result").getString("winddirect");
		 String windpower = object.getJSONObject("result").getString("windpower");
		 JSONArray index = object.getJSONObject("result").getJSONArray("index");
		  Iterator<Object> it = index.iterator();
          List<JSONObject > list=new ArrayList<JSONObject >();
          while (it.hasNext()) {
        	  JSONObject ob = (JSONObject) it.next();
        	  list.add(ob);
        	  }
          
//		 System.out.println(city2);
//		 System.out.println(date);
//		 System.out.println(img);
//		 System.out.println(week);
//		 System.out.println(temp);
//		 System.out.println(weather);
//		 System.out.println(humidity);
//		 System.out.println(winddirect);
//		 System.out.println(windpower);
//		 System.out.println(index);
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
	
	public static void main(String[] args) {
		Jsou();
	} 
}
