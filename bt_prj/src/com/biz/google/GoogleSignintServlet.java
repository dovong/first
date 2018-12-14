package com.biz.google;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/google_auth")
public class GoogleSignintServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//1.직접 소켓 통신(JAVA JDK)
	//2.Google API Client Libraries(google_api_client_jar)
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
