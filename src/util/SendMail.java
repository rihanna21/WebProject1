package util;

import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {
	public static void sendMail(String email) {
		/*
		//메일 발송자 정보
		String host = "smtp서버 host";
		String user = "발송이메일";
		String password = "비밀번호";
		
		String result;
		//SMTP 서버 정보 설정
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", "포트");
		props.put("mail.smtp.auth", "true");
		
		//SMTP 서버 메일 인증
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator(){
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});
				
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
			
			message.setSubject("Java Mail Test");
					
			message.setText("메일 구독 신청이 완료되었습니다.");
					
			Transport.send(message);
		}catch (MessagingException e) {
			e.printStackTrace();
		} */
	}
	
}
