package com.biz.google;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ddd")
public class tttttttttttt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String googleURL = "https://accounts.google.com/o/oauth2/v2/auth";
		String clien_id =  "757242128624-88c92autl00a8qjvpb1smbjcuumdu0f7.apps.googleusercontent.com";
		String redirect_uri = "http://localhost:8081/google_redirect";
		String scope = "https://www.googleapis.com/auth/calendar.readonly";
		String access_type = "offline";
		String response_type="code";
		String state = "state_parameter_passthrough_value";
		
		/*https://accounts.google.com/o/oauth2/v2/auth
			scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fdrive.metadata.readonly&
			access_type=offline&
			include_granted_scopes=true&
			state=state_parameter_passthrough_value&
			redirect_uri=http%3A%2F%2Foauth2.example.com%2Fcallback&
			response_type=code&
			client_id=client_id
			*/
		
		Map<String,Object> map = new HashMap<>();
		map.put("access_type", access_type);
		map.put("scope", scope);
		map.put("include_granted_scopes", true);
		map.put("redirect_uri", redirect_uri);
		map.put("response_type", response_type);
		map.put("clien_id", clien_id);
        
        //map에서 데이터를 꺼내서 k=v&k2=m&... 문장 생성
        StringBuffer buffer = new StringBuffer();
        for (Map.Entry<String,Object> keyval : map.entrySet()) {
            if (buffer.length() != 0) buffer.append('&');
            //buffer.append(URLEncoder.encode(keyval.getKey(), "UTF-8"));
            buffer.append(keyval.getKey());
            buffer.append('=');
            //buffer.append(URLEncoder.encode(String.valueOf(keyval.getValue()), "UTF-8"));
            buffer.append(String.valueOf(keyval.getValue()));
        }
        
		byte[] postDataBytes =  buffer.toString().getBytes();
				
		//byte[] postDataBytes = postData.toString().getBytes("UTF-8");
		
		URL url = new URL(googleURL); 
		
	    HttpURLConnection connection = (HttpURLConnection)url.openConnection();           
	    connection.setDoOutput(true); 
	    connection.setInstanceFollowRedirects(false); 
	    connection.setRequestMethod("POST");
	    connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded"); 
	    connection.setRequestProperty("charset", "utf-8");
	    connection.setRequestProperty("Content-Length", String.valueOf(postDataBytes.length));
	    connection.connect();
	    
	    //bite배열로 바꾼걸 OutputStream을 통해 write함
	    connection.getOutputStream().write(postDataBytes); //http body에 write하는 것(POST전송임!!)
	    BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream(), "UTF-8"));

        String line = "";
        if( (line = in.readLine())!=null)
            System.out.println(line);
		
        
        
		//code<**동의서 코드가 오는지 확인할 것.>
        //apikey
        //securityKey
        //client_id
        //---->access_token
	}

}
