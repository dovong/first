package com.biz.common;

import java.util.*;  
import javax.mail.*;  
import javax.mail.internet.*;
import javax.activation.*;  
  
public class SendMailTest{  
	
/*
java SE standard edition 
java EE enterprise edition =javax
java ME micro edition 경량= mobile만들때
*/
	
 public static void main(String [] args){ 
      String to = "kdyn001@naver.com";//change accordingly  
      String from = "kdyn001@naver.com";//change accordingly  
      String host = "localhost";//or IP address  
  
     //Get the session object  
      Properties properties = System.getProperties();  
      properties.setProperty("mail.smtp.host", host);  
      javax.mail.Session session = Session.getDefaultInstance(properties);
  
     //compose the message  
      try{  
         MimeMessage message = new MimeMessage(session);  
         message.setFrom(new InternetAddress(from));  
         message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
         message.setSubject("Web Mail subject Test...");  
         message.setText("Hello, this is example of sending email  ");  
  
         // Send message  
         Transport.send(message);  
         System.out.println("message sent successfully....");  
  
      }catch (MessagingException mex) {mex.printStackTrace();}  
   }  
}  