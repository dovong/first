package com.biz.craw;
import java.io.IOException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.ArrayList;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


public class YTNCraw {

	public static void makeFakeCertAndSSLSetting() throws NoSuchAlgorithmException, KeyManagementException {

		TrustManager[] trustAllCerts = new TrustManager[] { new X509TrustManager() {
			public X509Certificate[] getAcceptedIssuers() {
				return null;
			}
			public void checkClientTrusted(X509Certificate[] certs, String authType) {
			}
			public void checkServerTrusted(X509Certificate[] certs, String authType) {
			}
		} 
		};

		SSLContext sc = SSLContext.getInstance("SSL");
		sc.init(null, trustAllCerts, new SecureRandom());
		HttpsURLConnection.setDefaultHostnameVerifier(
				new HostnameVerifier() {
					@Override
					public boolean verify(String hostname, SSLSession session) {
						return true;
					}
				}
				);
		HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());
	}

	public ArrayList<YTNVO> ytnCrawling(String url, String selector) {
		//Connection.class
		//public interface Connection

		//Connection$Response.class
		//
		//       interface Response extends Base

		if(url.indexOf("https://") >= 0){
			try {
				makeFakeCertAndSSLSetting();
			} catch (KeyManagementException e) {
				e.printStackTrace();
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			}
		}

		Connection.Response response;
		ArrayList<YTNVO> list = new ArrayList<YTNVO>();
		//int count = 0;
		try {
			response = Jsoup.connect(url).method(Connection.Method.GET).execute();

			System.out.println(response.statusMessage());
			System.out.println(response.statusCode());

//			Document html = Jsoup.connect(url).post();
			Document html = response.parse();
			//System.out.println(doc.html());

			Elements elms = html.select(selector);
			//count  = elms.size();

			//conn = db.dbConn();
			for(Element elm : elms) {
				YTNVO vo  = new YTNVO();
				Elements atagTitle = elm.select("dt a");
				System.out.println("http://www.ytn.co.kr"+atagTitle.attr("href"));
				System.out.println(atagTitle.text());
				
				vo.setUrl("http://www.ytn.co.kr"+atagTitle.attr("href"));
				vo.setTitle(atagTitle.text());

				Elements atagContent = elm.select("dd.text");
				
				System.out.println(atagContent.text());
				vo.setContent(atagContent.text());

//			    #ytn_list_v2014 > dl:nth-child(6) > dd.vertical > p > a > img
			    
				Elements atagImg = elm.select("dd.vertical p a img");
				System.out.println(atagImg.attr("src"));
//				System.out.println(atagImg.text());
				vo.setImgsrc(atagImg.attr("src"));
				
				
				
				
				list.add(vo);
				
				

			}
			//db.dbClose(conn, pstmt);


			//			Elements elms = doc.select
			//				("div#ytn_list_v2014 dl.photo_list dt a");
			//			for(Element elm : elms) {
			//				System.out.println("http://www.ytn.co.kr"
			//						+elm.attr("href"));
			//				System.out.println(elm.text());
			//			}

			//File f = new File("C:\\jp\\workspace_java\\java_prj\\src\\com\\kosmo\\ch15\\crow.txt");

			//			java.lang.Object
			//			java.io.Writer
			//			java.io.OutputStreamWriter
			//			java.io.FileWriter

			//			java.lang.Object
			//			java.io.Writer
			//			java.io.BufferedWriter


			//			java.lang.Object
			//			java.io.OutputStream
			//			java.io.FileOutputStream

			//			OuputStreamWriter 1byte --> 2byte
			//			FileWriter 1byte --> 2byte

			//-----------------------------------
			//			
			//			byte[] byteArr = xxxxx.html().getBytes();
			//			FileOutputStream fos = new FileOutputStream(f);
			//			BufferedOutputStream bos = new BufferedOutputStream(fos);
			//			bos.write(byteArr);
			//			bos.flush();

			//			FileOutputStream fos = new FileOutputStream(f);
			//			OutputStreamWriter osw = new OutputStreamWriter(fos);
			//			BufferedWriter br = new BufferedWriter(osw);
			//			br.write(xxxxx.html());
			//			br.flush();

			//			FileWriter fw = new FileWriter(f);
			//			BufferedWriter br = new BufferedWriter(fw);
			//			br.write(xxxxx.html());
			//			br.flush();

			//			FileOutputStream fos 
			//				= new FileOutputStream(f);
			//			PrintStream out = new PrintStream(fos);
			//			out.println(doc.html());
			//			
			//			System.out.println(doc.html().length());  //222666
			//			System.out.println(f.length()); 			//223869
			//			

			//http://partnerjun.tistory.com/42

		} catch (IOException e) {
			e.printStackTrace();
		}
		//return list.size(); //크롤링 갯수
		return list; //리스트ㅡ 줄때
	}

	/*public static void main(String[] args) {
		JsoupTest soup = new JsoupTest();
		String url = "http://www.ytn.co.kr/photo/photo_list_1406.html";
		String selector="div#ytn_list_v2014 dl.photo_list";
//		int res = soup.ytnCrawling(url, selector);
		ArrayList<YTNVO> list = soup.ytnCrawling(url, selector);
		System.out.println(list.size() + "건 클롤링");


		url = "http://www.ytn.co.kr/photo/sports_list_9901.html";
		selector="div#ytn_list_v2014 dl.photo_list";
		res = soup.ytnCrawling(url, selector);
		System.out.println(res + "건 클롤링");


		url = "http://www.ytn.co.kr/health_life/health_life_list_011801.html";
		selector="div#ytn_list_v2014 dl.news_list_v2014";
		res = soup.ytnCrawling(url, selector);
		System.out.println(res + "건 클롤링");
		 

//		String sql = "insert into ytn values(ytn_seq.nextval, ?,?,?)";
		//				pstmt = conn.prepareStatement(sql);
		//				pstmt.setString(1,vo.getUrl());
		//				pstmt.setString(2,vo.getTitle());
		//				pstmt.setString(3,vo.getContent());
		//				res = pstmt.executeUpdate();
		

	}
*/


}
