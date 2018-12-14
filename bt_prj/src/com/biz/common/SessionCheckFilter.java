package com.biz.common;

import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SessionCheckFilter implements Filter {
   private ArrayList<String> checkingUrlList;

   //destroy : 자원해제
   //init : 초기화
   //doFilter : 할 일 

   public void init(FilterConfig config) throws ServletException {
      String configCheckingUrls = config.getInitParameter("CHECKING");
      StringTokenizer token = new StringTokenizer(configCheckingUrls, ",");

      checkingUrlList = new ArrayList<String>();

      while (token.hasMoreTokens()) {
         checkingUrlList.add(token.nextToken());
      }
   }

   public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
      HttpServletRequest request = (HttpServletRequest) req;
      HttpServletResponse response = (HttpServletResponse) res;
      String requestUrl = request.getServletPath();
      System.out.println(requestUrl + ":: <--Filter URL");

      if (checkingUrlList.contains(requestUrl) || requestUrl.indexOf("/admin/") != -1){
         HttpSession session = request.getSession();
         //세션 구분자.. a, u 검사 : 인증검사(Authentication)
         if (session==null || session.getAttribute("SESS_GUBUN")==null) {
            //System.out.println("## Filter Session Null - " + requestUrl);
            response.sendRedirect("/login.jsp");
         } else {
            //세션값 구분자 : 인가검사(Authorization)
            String gubun = session.getAttribute("SESS_GUBUN").toString();
            if(gubun.equals("u")) {
               if(requestUrl.indexOf("/admin/index.jsp") != -1) {
                  response.sendRedirect("/401.jsp");
               }
            }
            chain.doFilter(req, res);
         }
      } else {
         chain.doFilter(req, res);
      }
   }

   public void destroy(){

   }
}