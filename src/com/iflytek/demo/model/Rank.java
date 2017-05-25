package com.iflytek.demo.model;

public class Rank {
	private int wid;
	private String aircontion;
	private String city;
	private String province;
	private String aqi;
	private int pm2;
	private String date;

	public Rank(int wid, String aircontion, String city, String province, String aqi, int pm2, String date) {
		this.wid = wid;
		this.aircontion = aircontion;
		this.city = city;
		this.province = province;
		this.aqi = aqi;
		this.pm2 = pm2;
		this.date = date;
	}
	public Rank() {
	}

	public int getWid() {
		return wid;
	}

	public void setWid(int wid) {
		this.wid = wid;
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

	public int getPm2() {
		return pm2;
	}

	public void setPm2(int pm2) {
		this.pm2 = pm2;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getAircontion() {
		return aircontion;
	}

	public void setAircontion(String aircontion) {
		this.aircontion = aircontion;
	}

	@Override
	public String toString() {
		return "Rank{" +
				"wid=" + wid +
				", aircontion='" + aircontion + '\'' +
				", city='" + city + '\'' +
				", province='" + province + '\'' +
				", aqi='" + aqi + '\'' +
				", pm2='" + pm2 + '\'' +
				", date='" + date + '\'' +
				'}';
	}


}