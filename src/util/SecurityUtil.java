package util;

import java.security.MessageDigest;

public class SecurityUtil {
	public static String encryptSHA(String plain) {
		String sha = "";
		
		try {
			
			// ���� SHA-256 ���� �ؽ�
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			md.update(plain.getBytes());
			byte byteData[] = md.digest();
			
			// byte ���� hex ������ ��ȯ
			StringBuffer hexString = new StringBuffer();
			for(int i = 0; i < byteData.length; i++) {
				hexString.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
			}
			
			sha = hexString.toString();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return sha;		
	}	
}
