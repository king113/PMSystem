package com.iflytek.demo.model;

public class City {
	private int id;
	private int cityid;
	private String city;
	private String citycode;
	private String parentid;
	public int getCityid() {
		return cityid;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setCityid(int cityid) {
		this.cityid = cityid;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCitycode() {
		return citycode;
	}
	public void setCitycode(String citycode) {
		this.citycode = citycode;
	}
	public String getParentid() {
		return parentid;
	}
	public void setParentid(String parentid) {
		this.parentid = parentid;
	}
	public City(int cityid,String citycode,  String city, String parentid) {
		super();
		this.id =id;
		this.cityid = cityid;
		this.city = city;
		this.citycode = citycode;
		this.parentid = parentid;
	}
	public City() {
		super();
	}
	@Override
	public String toString() {
		return "City [cityid=" + cityid + ", city=" + city + ", citycode="
				+ citycode + ", parentid=" + parentid + "]";
	}
	
}
