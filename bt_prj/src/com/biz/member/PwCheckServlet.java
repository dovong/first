package com.biz.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/pwcheck")
public class PwCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//비밀번호 체크 -------------------------------
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		String mode = request.getParameter("mode");

		String sess_id = session.getAttribute("SESS_ID").toString();
		String userPw = request.getParameter("userpw");
		MemberVO mvo = new MemberVO();
		mvo.setUserId(sess_id);
		mvo.setUserPw(userPw);

		MemberDAO mdao = new MemberDAO();
		mvo = mdao.select(mvo);
		if(mvo.getUserGubun() == null || mvo.getUserGubun().equals(""))  {
			response.sendRedirect("pwcheck.jsp");
		} else if(mvo.getUserGubun().equals("u") && mode.equals("")){
			response.sendRedirect("/edit");
		} else if(mode.equals("del")) {
			response.sendRedirect("/del");
		} else {
			response.sendRedirect("/edit");
		}

	}


}
