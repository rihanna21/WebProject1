package action;

import java.util.HashMap;

import javax.servlet.http.*;

import controller.CommandAction;
import dao.UserDao;
import dto.User;
import util.SecurityUtil;

public class LoginAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		Cookie cookie = null;
		String email = request.getParameter("email");
		String password = SecurityUtil.encryptSHA(request.getParameter("password"));
		String e_save = request.getParameter("e_save");  // on or null
		
		if(e_save != null && e_save.equals("on")) {
			cookie = new Cookie("email", email); // 쿠키에 key, value 저장
			cookie.setMaxAge(20*60); //쿠키 유효기간을 3일로 설정
			response.addCookie(cookie); //client에 쿠키값을 저장
		}else {
			cookie = new Cookie("email", null); // 쿠키 key value에 null 저장
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
		
		HashMap<String, String> user_info = new HashMap<>();
		user_info.put("email", email);
		user_info.put("password", password);
		
		String redirectUrl = "sign.jsp";
		String msg;
		
		int user_cnt = UserDao.getInstance().checkUser(user_info);
		
		if(user_cnt == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("signedUser", email);
			redirectUrl = "main.do";
		}
		else
		{
			msg = "이메일과 비밀번호를 확인해주세요.";
			request.setAttribute("msg", msg);
		}
		
		return redirectUrl;
	}

}
