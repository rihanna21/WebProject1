package util;

import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {
	public static void sendMail(String email) {
		/*
		//���� �߼��� ����
		String host = "smtp���� host";
		String user = "�߼��̸���";
		String password = "��й�ȣ";
		
		String result;
		//SMTP ���� ���� ����
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", "��Ʈ");
		props.put("mail.smtp.auth", "true");
		
		//SMTP ���� ���� ����
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
					
			message.setText("���� ���� ��û�� �Ϸ�Ǿ����ϴ�.");
					
			Transport.send(message);
		}catch (MessagingException e) {
			e.printStackTrace();
		} */
	}
	
}
