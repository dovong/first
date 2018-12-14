<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$("#calendarBtn").click(function(){
		gapi.client.calendar.events.list({
            'calendarId': 'primary',
            'timeMin': (new Date()).toISOString(),
            'showDeleted': false,
            'singleEvents': true,
            'maxResults': 10,
            'orderBy': 'startTime'
          }).then(function(response) { //성공
        	  console.log("calendar 성공"+response);
        	  
        	  var events = response.result.items;
        	  console.log('Upcoming events:');

              if (events.length > 0) {
                for (i = 0; i < events.length; i++) {
                  var event = events[i];
                  var when = event.start.dateTime;
                  if (!when) {
                    when = event.start.date;
                  }
                  console.log(event.summary + ' (' + when + ')')
                }
              } else {
            	  console.log('No upcoming events found.');
              }
        	  
          }, function(response) { //실패
        	  console.log("calendar 실패");
          }
     );
	});
    $("#googleAuthBtn").click(function(){
    	//로그인처리
    	     var vargoogleAuth = gapi.auth2.getAuthInstance();
              //로드된 lib를 사용해 로그인
              if(!vargoogleAuth.isSignedIn.get()){
	              vargoogleAuth.signIn().then(
	                 function(){
	                    
	                    console.log("1.signIn() OK");
	                    $("#googleAuthBtn").val("LOGOUT");
	                    //googleUser.getHostedDomain()
	                    //googleUser.getGrantedScopes()
	                    
	                    //*openAPI : API KEY
	                    //**Auth  : 다순 인증, 로그인하기위해, site(company / homepage) : client_id가 필요함, 동의 완료 후 : uniq id 받는다.
	                    //***OAuth : openAPI를 쓰기위해, access_token, owner가 동의해야함. 개인적정보,자료 가져올 수 있음
	
	                    //로드된 lib를 사용해 로그인한 사용자 정보 가져오기
	                  var vargoogleUser = vargoogleAuth.currentUser.get();
	                    console.log("User Uniq.ID : " + vargoogleUser.getId()); //owner의 아이디
	                    
	                  var varbasicProfile = vargoogleUser.getBasicProfile();   //vo같은 정보를 가지고 있다.
	                    console.log("Profile ID : " + varbasicProfile.getId());
	                    console.log("Profile Name : " + varbasicProfile.getName());
	                    console.log("Profile GivenName : " + varbasicProfile.getGivenName());
	                    console.log("Profile FamilyName : " + varbasicProfile.getFamilyName());
	                    console.log("Profile IMG URL : " + varbasicProfile.getImageUrl());
	                    console.log("Profile Email : " + varbasicProfile.getEmail());

	                    //gapi.auth2.AuthorizeResponse
						var authResponse = vargoogleUser.getAuthResponse();
						console.log("id_token :: "+authResponse.id_token);
	                    console.log("access_token :: "+authResponse.access_token);
	                 },
	                 function(){
	                    console.log("※※※※※Google Login Faild※※※※※")
	                 }
	              );
              } else{
            	  vargoogleAuth.signOut().then(
            		function(){
            			console.log("※※※※※signOut※※※※※");
            			$("#googleAuthBtn").val("LOGIN");
            		},
            		function(){
            			console.log("※※※※※signOut Faild※※※※※");
            		}
            	  
            	  );
              }

	});
});
</script>



</head>
<body>
Google sing in Test

<script>
		function googleLibLoad() {
		  gapi.load('client:auth2', googleAuth);
		}
		
		function googleAuth() {
			var CLIENT_ID = '757242128624-88c92autl00a8qjvpb1smbjcuumdu0f7.apps.googleusercontent.com';
		    var API_KEY = 'AIzaSyClxFh3S_u-mgKBYFQRDl2-QujJPlOU944';
		    var DISCOVERY_DOCS = ["https://www.googleapis.com/discovery/v1/apis/calendar/v3/rest"];
		    var SCOPES = "https://www.googleapis.com/auth/calendar.readonly";
			
		     gapi.client.init({
		         apiKey: API_KEY,
		         clientId: CLIENT_ID,
		         discoveryDocs: DISCOVERY_DOCS,
		         scope: SCOPES
		     			  }).then(
		                  function(){ //성공
		                    console.log("Lib Load Success");
		                  }, function(){//실패
		                       console.log("※※※※※Lib Load Faild※※※※※");
		                  });
		    
		     //오너(client_id)에게 구글이 주는 동의화면이 뜬다. access token은 1시간 이용제한.
		      
		
		
		              //로그아웃
		              //googleAuth.signOut()
		
		            //googleAuth.isSignedIn.get()  //로그인 유무 true/false
		            //googleUser.isSignedIn()
		              
		              //googleAuth.disconnect()
		
		              //googleAuth.grantOfflineAccess(options)

}

  


  </script>
<input type="button" id="googleAuthBtn" value="로그인">
<input type="button" id="calendarBtn" value="일정가져오기">
<div id="resdiv">
</div>
<script src="https://apis.google.com/js/api.js?onload=googleLibLoad" async defer></script>
</body>
</html>