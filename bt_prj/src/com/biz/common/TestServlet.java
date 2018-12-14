package com.biz.common;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/test")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TestServlet() {
        super();
        System.out.println("testserver constructure call....");
    }

	public void init(ServletConfig config) throws ServletException {
		System.out.println("testserver init call....");
		String maxSize = config.getInitParameter("MAX_SIZE");
		String updir = config.getInitParameter("UPDIR");
		System.out.println(maxSize + ",,,,,," +updir);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("test..get........get........get........");
	}

}
