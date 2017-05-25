package com.iflytek.demo.dao;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

import net.sf.json.JSONObject;

import com.iflytek.demo.model.Weather;

public class WeatherDao {
	public static String loadJson (String url) {  
		StringBuilder json = new StringBuilder();  
        try {  
            URL urlObject = new URL(url);  
            URLConnection uc = urlObject.openConnection();  
            BufferedReader in = new BufferedReader(new InputStreamReader(uc.getInputStream()));  
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
	
	public void getCour(){
		String url = "http://api.jisuapi.com/weather/query?appkey=1af7ddfbf3e2bb21&city=芜湖";  
		Weather courier = new Weather();
		  String json = loadJson(url);  
		  /*System.out.println(json);*/
		  JSONObject object=JSONObject.fromObject(json);
		  /*System.out.println(object);*/
		  courier.setCity(object.getJSONObject("result").getString("city"));
		  courier.setDate(object.getJSONObject("result").getString("date"));
		  courier.setImg(object.getJSONObject("result").getString("img"));
		  courier.setWeek(object.getJSONObject("result").getString("week"));
		  courier.setTemp(object.getJSONObject("result").getString("temp"));
		  courier.setWeather(object.getJSONObject("result").getString("weather"));
		  System.out.println(courier.toString());
	}
}
