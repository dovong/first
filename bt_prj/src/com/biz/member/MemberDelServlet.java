package com.biz.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/del")
public class MemberDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		if(session.getAttribute("SESS_ID") == null) {
			response.sendRedirect("login.jsp");
		} else {
			String sess_id = session.getAttribute("SESS_ID").toString();
			String userPw = request.getParameter("userpw");
			
			MemberDAO mdao = new MemberDAO();
	
			int delres = mdao.updateDel(sess_id);
			if(delres>0) {
				session.invalidate();
				response.sendRedirect("index.jsp");
			}else {
				response.sendRedirect("404.jsp");
			}

	}


	}
	
}
