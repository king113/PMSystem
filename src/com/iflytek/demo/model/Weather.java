package com.iflytek.demo.model;


public class Weather {
	private int id;
	private String city;
	private String date;
	private String week;
	private String weather;
	private String temp;
	private String img;
	@Override
	public String toString() {
		return "Courier [city=" + city + ", date=" + date + ", week=" + week
				+ ", weather=" + weather + ", temp=" + temp + ", img=" + img
				+ "]";
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Weather() {
	}

	public Weather(String city, String date, String week, String weather,
			String temp, String img) {
		this.city = city;
		this.date = date;
		this.week = week;
		this.weather = weather;
		this.temp = temp;
		this.img = img;
	}

	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getWeek() {
		return week;
	}
	public void setWeek(String week) {
		this.week = week;
	}
	public String getWeather() {
		return weather;
	}
	public void setWeather(String weather) {
		this.weather = weather;
	}
	public String getTemp() {
		return temp;
	}
	public void setTemp(String temp) {
		this.temp = temp;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
}
