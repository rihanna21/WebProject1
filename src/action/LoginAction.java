package action;

import javax.servlet.http.*;

import controller.CommandAction;
import dao.UserDao;
import dto.User;

public class LoginAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		String redirectUrl = "sign.jsp";
		String msg;
		
		int user_cnt = UserDao.getInstance().checkUser(email, password);
		
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
