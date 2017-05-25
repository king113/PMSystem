package com.iflytek.demo.model;

public class Data {
	private int wid;
	private String airquality;
	private String city;
	private String province;
	private String aqi;
	private String pm2;
	private String date;
	public int getWid() {
		return wid;
	}
	public void setWid(int wid) {
		this.wid = wid;
	}
	public String getAirquality() {
		return airquality;
	}
	public void setAirquality(String airquality) {
		this.airquality = airquality;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getAqi() {
		return aqi;
	}
	public void setAqi(String aqi) {
		this.aqi = aqi;
	}
	public String getPm2() {
		return pm2;
	}
	public void setPm2(String pm2) {
		this.pm2 = pm2;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Data(String airquality, String city, String province,
			String aqi, String pm2, String date) {
		this.airquality = airquality;
		this.city = city;
		this.province = province;
		this.aqi = aqi;
		this.pm2 = pm2;
		this.date = date;
	}
	
	public Data(int wid, String airquality, String city, String province,
			String aqi, String pm2, String date) {
		super();
		this.wid = wid;
		this.airquality = airquality;
		this.city = city;
		this.province = province;
		this.aqi = aqi;
		this.pm2 = pm2;
		this.date = date;
	}
	public Data() {
	}
	@Override
	public String toString() {
		return "Data [wid=" + wid + ", aircontion=" + airquality + ", city="
				+ city + ", province=" + province + ", aqi=" + aqi + ", pm2="
				+ pm2 + ", date=" + date + "]";
	}
	

}
