package Jsoup;

import java.util.UUID;

public class JsoupUtil {
	private JsoupUtil() {

	}

	private static final JsoupUtil instance = new JsoupUtil();

	public static JsoupUtil getInstance() {
		return instance;
	}

	/**
	 * 
	 * uuid
	 * 
	 */
	public String getUUID() {
		String s = UUID.randomUUID().toString();
		return s.substring(0, 8) + s.substring(9, 13) + s.substring(14, 18)
				+ s.substring(19, 23) + s.substring(24);
	}
	
	public String getInsertSql(Link link) {
	return "insert into rank (city,location,aqi, aircontion,first,pm2,pm10,date) values ('"
				+link.getCity()
				+"','"
				+ link.getLocation()
				+ "','"
				+ link.getAqi()
				+ "','"
				+ link.getAircontion()
				+ "','"
				+ link.getFirst()
				+ "','"
				+ link.getPm2()
				+ "','"
				+ link.getPm10()
				+ "','"
				+ link.getDate() 
				+"')"
				;
	}
	public String getInsertRankSql(Rank rank) {
		return "insert into date (airquality,city,province,aqi,pm2,date) values ('"
					+rank.getAirquality()
					+"','"
					+ rank.getCity()
					+ "','"
					+ rank.getProvince()
					+ "','"
					+ rank.getAqi()
					+ "','"
					+ rank.getPm2()
					+ "','"
					+ rank.getDate()
					+ "')"
					;
		}
	
	

}
