package com.kaushalyum.services;

import java.net.InetAddress;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Hashtable;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeMessage.RecipientType;

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
	
	public void registerUser(UserModel userInfo){
		Userdetail userdetail = new Userdetail();
		userdetail.setFirstName(userInfo.getFirstName());
		userdetail.setLastName(userInfo.getLastName());
		userdetail.setUserName(userInfo.getUserName());
		userdetail.setEmail(userInfo.getEmail());
		userdetail.setPassword(userInfo.getPassword());
		userdetail.setAddress(userInfo.getAddress());
		userdetail.setAge(userInfo.getAge());
		userdetail.setContactno(userInfo.getContactno());
		
		userDao.insertUser(userdetail);
		
		
	}
	
/*	private void sendMail(String resultsPath) throws Exception {
		try {
			


			System.out.println("Sending mail...");
			Properties props = new Properties();
			props.put("mail.smtp.port", PORT);
			props.setProperty("mail.user", USER);
			props.setProperty("mail.host", HOST);
			props.setProperty("mail.password", PASSWORD);
			props.put("mail.smtp.starttls.enable", STARTTLS);
			props.setProperty("mail.transport.protocol", "smtp");

			Session mailSession = Session.getDefaultInstance(props, null);
			MimeMessage message = new MimeMessage(mailSession);
			for(int i=0;i<TO.length;i++) {
				message.addRecipient(RecipientType.TO, new InternetAddress(TO[i]));
			}
			for(int i=0;i<BCC.length;i++) {
				message.addRecipient(RecipientType.BCC, new InternetAddress(BCC[i]));
			}
			message.addFrom(new InternetAddress[] { new InternetAddress(FROM) });
			Multipart mp = new MimeMultipart();

			MimeBodyPart mbp = new MimeBodyPart();
			FileDataSource fds = new FileDataSource(resultsPath + "Summary.htm");
			mbp.setDataHandler(new DataHandler(fds));
			mp.addBodyPart(mbp);

			MimeBodyPart mbp1 = new MimeBodyPart();
			FileDataSource fds1 = new FileDataSource(resultsPath + "Result.zip");
			mbp1.setDataHandler(new DataHandler(fds1));
			mbp1.setFileName("Result.zip");
			mp.addBodyPart(mbp1);

			message.setContent(mp);
			message.setSentDate(new Date());
			Date sentDate = message.getSentDate();
			SimpleDateFormat format = new SimpleDateFormat("dd-MMM-YYYY");
			String date = format.format(sentDate);
			InetAddress addr = InetAddress.getLocalHost();
			String hostName = addr.getHostName();
			//message.setSubject("["+hostName+"]"+" Automation Test Pass Report ["+table.get("TestSuite")+"] - " + sentDate.getDate()+" "+sentDate.getgetMonth()+" "+sentDate.getYear());
			message.setSubject("["+hostName+"]"+"Samaritan Automation Report ["+table.get("TestSuite")+"] - " + date);

			Transport transport1 = mailSession.getTransport("smtp");
			transport1.connect(HOST, USER, PASSWORD);
			transport1.sendMessage(message,message.getRecipients(Message.RecipientType.TO));			
			transport1.sendMessage(message,message.getRecipients(Message.RecipientType.BCC));
			
			transport1.close();
		} catch (Exception e) {
			throw new Exception("Exception occured in sendMail method:" + e.getMessage());
		}
	}
 */
}
