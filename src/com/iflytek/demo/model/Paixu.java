package com.iflytek.demo.model;

public class Paixu {
	private int id;
	private String quality;
	private String local;
	private String province;
	private String aqi;
	private String pm2_5;
	private String time;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQuality() {
		return quality;
	}
	public void setQuality(String quality) {
		this.quality = quality;
	}
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
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
	public String getPm2_5() {
		return pm2_5;
	}
	public void setPm2_5(String pm2_5) {
		this.pm2_5 = pm2_5;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", quality=" + quality + ", local=" + local
				+ ", province=" + province + ", aqi=" + aqi + ", pm2_5="
				+ pm2_5 + ", time=" + time + "]";
	}
	

}
