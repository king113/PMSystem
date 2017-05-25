package Jsoup;

import java.io.IOException;
import java.util.Timer;  
import java.util.TimerTask;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class GetLink {
	private JsoupUtil ju = JsoupUtil.getInstance();  
    
    private DBUtil du = DBUtil.getInstance();  
      
    private Link link = new Link();  
    private Rank rank = new Rank();
    private String insertSql = "";  
    
    
    
    public void getLink(String url) {  
    	System.out.println("11111111");
        try {  
        	 
            Document doc = Jsoup.connect(url).timeout(60*60*1000).get();
            Elements times = doc.select("div[class=citydata_updatetime]");

            Elements hrefs = doc.select("ul").select("li").select("[class=pj_area_data_item pj_area_data_item_darkbg]");
            Elements city = doc.select("div[class=citydata_changecity]").select("span[class=city_name]");
            System.out.println(hrefs.size()/2);
            String a = hrefs.text();
            System.out.println(a);
            
            String t = times.text();
            String city1 = city.text();
            String [] data = new String [4];
            String [] data1 =new String [2];
            String [] time = t.split("：");
			
            for(int i=0;i<hrefs.size()/2;i++){
            	Elements location = hrefs.get(i).select("span");
            	Elements loo = hrefs.get(i).select("a");
            	
            	
            	for(int j=0;j<location.size();j++){
            		Element  span = location.get(j);
            		String lo = span.text();
            		data[j] = lo;
            	}
            	for(int k=0;k <loo.size();k++){
            		Element a1= loo.get(k);
            		String a2 = a1.text();
            		data1[k] =a2;
            		
            	}
            	
            	
            	
            	
            	link.setCity(city1);
                link.setLocation(data1[0]);
                link.setAqi(data[0]);  
                link.setAircontion(data[1]);
                link.setFirst(data1[1]);
                link.setPm2(data[2]);
                link.setPm10(data[3]);
                link.setDate(time[1]);
       	 
       	 System.out.println("aqi:"+link.getAqi());
       	 
     	insertSql = ju.getInsertSql(link);  
           du.insert(insertSql);
            }
           
          
            
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
    }  
   
    public void getLinkRank(String url) {  
    	System.out.println("22222222");
        try {  
        	
            Document doc = Jsoup.connect(url).timeout(60*60*1000).get();  
           
            Elements hrefs = doc.select("div[class=pj_area_data rank_data]").select("ul[class=pj_area_data_details rank_box]").select("li");
            Elements times = doc.select("div[class=rank_banner_right]");
            System.out.println(hrefs.size());
           
           String time1 = times.text();
            String [] span = new String[5];
            String [] a  = new String[1];
            String [] time2 = time1.split("：");
			
          for(int i=0;i<hrefs.size();i++){
            	Elements span1 = hrefs.get(i).select("span");
            	Elements a1 = hrefs.get(i).select("a");
            	
            	
            	for(int j=0;j<span1.size();j++){
            		Element  span2 = span1.get(j);
            		String span3 = span2.text();
            		span[j] = span3;
            		System.out.println(span[j]);
            	}
            	for(int k=0;k <a1.size();k++){
            		Element a2= a1.get(k);
            		String a3 = a2.text();
            		a[k] =a3;
            		System.out.println(a[k]);
            		
            	}
            	
            	rank.setAirquality(span[1]);
            	rank.setProvince(span[2]);
            	rank.setAqi(span[3]);
            	rank.setPm2(span[4]);
            	rank.setCity(a[0]);
            	rank.setDate(time2[1]);
            	
            	
            	insertSql = ju.getInsertRankSql(rank);  
            	du.insert(insertSql);
            
            
          
          }   
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
    }                                
    
    public static void timer() {  
        Timer timer = new Timer();  
        timer.schedule(new TimerTask() {  
            public void run() { 
            
            	 String URL1 = "http://www.pm25.com/city/beijing.html"; 
                 String URL2 = "http://www.pm25.com/city/shanghai.html"; 
                 String URL3 = "http://www.pm25.com/city/guangzhou.html"; 
                 String URL4 = "http://www.pm25.com/city/shenzhen.html";
                 String URL5 = "http://www.pm25.com/city/hangzhou.html"; 
                 String URL6 = "http://www.pm25.com/city/tianjin.html";
                 String URL7 = "http://www.pm25.com/city/chengdu.html";
                 String URL8 = "http://www.pm25.com/city/nanjing.html"; 
                 String URL9 = "http://www.pm25.com/city/xian.html"; 
                 String URL10 = "http://www.pm25.com/city/wuhan.html"; 
                 String URL11 = "http://www.pm25.com/city/wuhu.html"; 
                 String URL12 = "http://www.pm25.com/rank.html"; 
                 String [] URL = {URL1,URL2,URL3,URL4,URL5,URL6,URL7,URL8,URL9,URL10,URL11};
                 for(int i=0;i<URL.length;i++){
                 	new GetLink().getLink(URL[i]);
                 }
            	new GetLink().getLink(URL12);
             	new GetLink().getLinkRank(URL12);
            }  
        }, 1000, 60*60*1000);  
    }  
      
    public static void main(String[] args) {  
      
    			timer();
    } 
    
    
    
}
