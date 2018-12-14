package com.biz.chart;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/chart")
public class ChartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int[] arr = {50, 100, 50, 70, 60, 80, 95};
		
		
		
		ArrayList<Integer> list = new ArrayList<Integer>();
		list.add(44);
		list.add(90);
		list.add(80);
		list.add(11);
		list.add(25);
		list.add(100);
		list.add(150);
		
		ArrayList<ChartVO> clist = new ArrayList<ChartVO>();
		
		String[] colors= {
				"#574B90", "#28a745","#ffc107", "#dc3545","#343a40", "#574B90","#28a745", "#ffc107","#dc3545", "#343a40","#574B90", "#28a745",
				"#ffc107", "#dc3545", "#343a40"};
		for(int i=0; i<15; i++) {
			ChartVO cvo = new ChartVO();
			cvo.setLabel("가전"+i);
			cvo.setIntVal(548*i+100);
			cvo.setStrColor(colors[i]);
			clist.add(cvo);
		}
		request.setAttribute("CHART_DATA1", arr);
		request.setAttribute("CHART_DATA4", clist);
		
		request.getRequestDispatcher("chartjs.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
