package com.kaushalyum.services;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kaushalyum.dao.UserDao;
import com.kaushalyum.entities.Userdetail;
import com.kaushalyum.model.UserModel;


@Transactional
@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	public void registerUser(UserModel userInfo) throws Exception{
		try {
			Userdetail userdetail = new Userdetail();
			userdetail.setFirstName(userInfo.getFirstName());
			userdetail.setLastName(userInfo.getLastName());
			userdetail.setEmail(userInfo.getEmail());
			userdetail.setPassword(userInfo.getPassword());
			userdetail.setAddress(userInfo.getAddress());
			userdetail.setAge(userInfo.getAge());
			userdetail.setContactno(userInfo.getContactno());
			userDao.insertUser(userdetail);
			//this.sendMail(userInfo.getEmail());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw new Exception(e.getMessage());
		}

	}
	
	private void sendMail(String recipientEmail) throws Exception {
			
	/*	String PORT = "587";
			String STARTTLS = "true";
			String HOST = "localhost";
			String PASSWORD = "success@123!";
			String FROM = "kaushalyum@gmail.com";
			String USER = "sendMail@gmail.com";
			String to = recipientEmail;

			System.out.println("Sending mail...");
		  // Get system properties
	      Properties properties = System.getProperties();

	      // Setup mail server
	      properties.setProperty("mail.smtp.host", "10.101.3.229");
	      //properties.setProperty("mail.smtp.host", HOST)

	      // Get the default Session object.
	      Session session = Session.getDefaultInstance(properties);

	      try {
	         // Create a default MimeMessage object.
	         MimeMessage message = new MimeMessage(session);

	         // Set From: header field of the header.
	         message.setFrom(new InternetAddress(FROM));

	         // Set To: header field of the header.
	         message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

	         // Set Subject: header field
	         message.setSubject("This is the Subject Line!");

	         // Now set the actual message
	         message.setText("This is actual message");

	         // Send message
	         Transport.send(message);
	         System.out.println("Sent message successfully....");
	      }catch (MessagingException mex) {
	         mex.printStackTrace();
	      } */
		
	      final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
	      // Get a Properties object
	         Properties props = System.getProperties();
	         props.setProperty("mail.smtp.host", "smtp.gmail.com");
	         props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
	         props.setProperty("mail.smtp.socketFactory.fallback", "false");
	         props.setProperty("mail.smtp.port", "465");
	         props.setProperty("mail.smtp.socketFactory.port", "465");
	         props.put("mail.smtp.auth", "true");
	         props.put("mail.debug", "true");
	         props.put("mail.store.protocol", "pop3");
	         props.put("mail.transport.protocol", "smtp");
	         final String username = "kaushalyum@gmail.com";//
	         final String password = "success@123!";
	         try{
	         Session session = Session.getDefaultInstance(props, 
	                              new Authenticator(){
	                                 protected PasswordAuthentication getPasswordAuthentication() {
	                                    return new PasswordAuthentication(username, password);
	                                 }});

	       // -- Create a new message --
	         Message msg = new MimeMessage(session);

	      // -- Set the FROM and TO fields --
	         msg.setFrom(new InternetAddress("xxxx@gmail.com"));
	         msg.setRecipients(Message.RecipientType.TO, 
	                          InternetAddress.parse(recipientEmail,false));
	         msg.setSubject("Hello");
	         msg.setText("How are you");
	         msg.setSentDate(new Date());
	         Transport.send(msg);
	         System.out.println("Message sent.");
	      }catch (MessagingException e){ System.out.println("Erreur d'envoi, cause: " + e);}
	      }   
	      
}