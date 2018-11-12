package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandAction;
import dao.UserDao;
import util.SendMail;

public class SubscribeAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String email = request.getParameter("email");
		
		SendMail.sendMail(email);
		
		UserDao.getInstance().updateUser(email);
		
		return "main.do";
	}

}
