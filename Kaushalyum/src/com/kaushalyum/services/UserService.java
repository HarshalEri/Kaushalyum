package com.kaushalyum.services;

import java.util.Properties;

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
			this.sendMailToUser(userInfo);
			this.sendMailToAdmin(userInfo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw new Exception(e.getMessage());
		}

	}
	
	private void sendMailToUser(UserModel userInfo) throws Exception {
	
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
	    String emailBody = " Hi "+userInfo.getFirstName()+",\n"
	    			+"\n"	
	        		+"Thank you for registering on kaushalyum services.We will contact you within 2 working days.\n"
	        		+"As kaushalyum we engaged in providing the ayyas to the families of new born babies to massage & bath.\n" 
	        		+"Basically kaushalyum is sanskrit word means 'skills'.We as company wants to promote the skills of these ayyas, as these ladies deserves a lot,it just our humble try to promote these ladies.\n"
	        		+"\n"
	        		+"\n"
	        		+"\n"
	        		+"Thanks & Regards,\n"                   
	        		+"Amol Eri ";
	    
	    // Create the email addresses involved
	    try {
	        InternetAddress from = new InternetAddress("username");
	        message.setSubject("Kaushalyum");
	        message.setFrom(from);
	        message.addRecipients(Message.RecipientType.TO, InternetAddress.parse(userInfo.getEmail()));

	        // Create a multi-part to combine the parts
	        Multipart multipart = new MimeMultipart("alternative");

	        // Create your text message part
	        BodyPart messageBodyPart = new MimeBodyPart();
	        messageBodyPart.setText(emailBody);

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
 
	private void sendMailToAdmin(UserModel userInfo) throws Exception {
		
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
	    String emailBody = " Hi Amol,\n"
	    			+"\n"
	        		+"New User is Registered on Kaushalyum.com, find the user information below \n"
	        		+"\n" 
	        		+"Name :"+userInfo.getFirstName()+" "+userInfo.getLastName()+"\n"
	        		+"Contact Number : "+userInfo.getContactno()+"\n"
	        		+"Email Address : "+userInfo.getEmail()+"\n"
	        		+"Address : "+userInfo.getAddress()+ "\n"
	        		+"\n"
	        		+"\n"
	        		+"\n"
	        		+"Thanks & Regards,\n"                   
	        		+"Team Kaushalyum";

	    // Create the email addresses involved
	    try {
	        InternetAddress from = new InternetAddress("username");
	        message.setSubject("Kaushalyum user registration");
	        message.setFrom(from);
	        message.addRecipients(Message.RecipientType.TO, InternetAddress.parse("kaushalyum@gmail.com"));

	        // Create a multi-part to combine the parts
	        Multipart multipart = new MimeMultipart("alternative");

	        // Create your text message part
	        BodyPart messageBodyPart = new MimeBodyPart();
	        messageBodyPart.setText(emailBody);

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