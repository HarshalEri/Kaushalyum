package com.kaushalyum.services;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

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
			this.sendMail(userInfo.getEmail());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw new Exception(e.getMessage());
		}

	}
	
	private void sendMail(String recipientEmail) throws Exception {
	
	    Properties props = System.getProperties();
	    props.put("mail.smtp.starttls.enable", true); // added this line
	    props.put("mail.smtp.host", "smtp.gmail.com");
	    props.put("mail.smtp.user", "kaushalyum@gmail.com");
	    props.put("mail.smtp.password", "success@123!");
	    props.put("mail.smtp.port", "587");
	    props.put("mail.smtp.auth", true);

	    Session session = Session.getInstance(props,
	    new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("kaushalyum@gmail.com", "success@123!");
            }
        });
	    
	    MimeMessage message = new MimeMessage(session);

	    System.out.println("Port: "+session.getProperty("mail.smtp.port"));

	    // Create the email addresses involved
	    try {
	        InternetAddress from = new InternetAddress("username");
	        message.setSubject("Yes we can");
	        message.setFrom(from);
	        message.addRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));

	        // Create a multi-part to combine the parts
	        Multipart multipart = new MimeMultipart("alternative");

	        // Create your text message part
	        BodyPart messageBodyPart = new MimeBodyPart();
	        messageBodyPart.setText("some text to send        d");

	        // Add the text part to the multipart
	        multipart.addBodyPart(messageBodyPart);

	        // Associate multi-part with message
	        message.setContent(multipart);

	        // Send message
	        Transport transport = session.getTransport("smtp");
	        transport.connect("smtp.gmail.com", "username", "password");
	        transport.sendMessage(message, message.getAllRecipients());
	    } catch (AddressException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    } catch (MessagingException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	    }
}