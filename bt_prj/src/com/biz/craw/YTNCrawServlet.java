package com.biz.craw;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ytn")
public class YTNCrawServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		YTNCraw soup = new YTNCraw();
		String url = "http://www.ytn.co.kr/photo/photo_list_1406.html";
		String selector="div#ytn_list_v2014 dl.photo_list";
		ArrayList<YTNVO> list = soup.ytnCrawling(url, selector);

		System.out.println(list.size() + "건 클롤링");
		
		
		PrintWriter out = response.getWriter();
		
		for(YTNVO yvo : list) {
		out.println(yvo.getTitle());
		
		out.println("<a href="+ yvo.getUrl()+"><br>"+yvo.getContent()+"<br>");
		out.println("<img src="+ yvo.getImgsrc()+" width='200' heigh='200'<br><br>");
		}
		
	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
