package Jsoup;

import java.io.Serializable;

public class Link implements Serializable{
	
	
    private int id;  
    private String city;
    private String location;  
    private String aqi;  
    private String aircontion;
    private String first;
    private String pm2;
    private String pm10;
   private String date;
   
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getAqi() {
		return aqi;
	}
	public void setAqi(String aqi) {
		this.aqi = aqi;
	}
	public String getAircontion() {
		return aircontion;
	}
	public void setAircontion(String aircontion) {
		this.aircontion = aircontion;
	}
	public String getFirst() {
		return first;
	}
	public void setFirst(String first) {
		this.first = first;
	}
	public String getPm2() {
		return pm2;
	}
	public void setPm2(String pm2) {
		this.pm2 = pm2;
	}
	public String getPm10() {
		return pm10;
	}
	public void setPm10(String pm10) {
		this.pm10 = pm10;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	    
    
    
	
	
}
