package com.biz.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.biz.common.SendMailGoogleTest;
import com.biz.shop.ShopVO;

/**
 * Servlet implementation class ForgotPassword
 */
@WebServlet("/forgot")
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String subject = "This is the Subject Line!";
		
		int random1 = (int)(Math.random()*10000);
		int random2 = (int)(Math.random()*10000);
		int random3 = (int)(Math.random()*10000);
		int random4 = (int)(Math.random()*10000);
		String newPw = "!@" + random1 + random2 + random3 + random4;
		System.out.println(newPw);
		
		MemberDAO dao = new MemberDAO();
		MemberVO mvo = new MemberVO();
		mvo.setUserEmail(email);
		mvo.setUserPw(newPw);
		
		int res = dao.changePassword(mvo);
		if(res > 0){
		//random 숫자 생성
		
		String htmlStr = "";
		StringBuffer buffer = new StringBuffer();
		buffer.append("<html>");
		buffer.append("<head>");
		buffer.append("<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>");
		buffer.append("<title>Insert title here</title>");
		buffer.append("</head>");
		buffer.append("<body>");
		buffer.append("<table width='200'>");
		buffer.append("<tr><td><img src='https://image.fmkorea.com/files/attach/new/20171216/33854530/261523303/868670204/99b983892094b5c6d2fc3736e15da7d1.jpg'></td></tr>");
		buffer.append("<tr><td>변경된 비밀번호 :"+ newPw +"</td></tr>");
		buffer.append("</table>");
		buffer.append("</body>");
		buffer.append("</html>");
		
		SendMailGoogleTest g = new SendMailGoogleTest();
		g.sendMail(email, subject, buffer.toString());
		
		} else {
			response.sendRedirect("404.jsp");
		}
	}

}
