package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandAction;
import dao.UserDao;
import dto.User;
import util.SecurityUtil;

public class JoinAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String uname = request.getParameter("lastName") + " " + request.getParameter("firstName");
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		String password = SecurityUtil.encryptSHA(request.getParameter("password"));
		
		String msg;
		int query_flag;
		
		User user = new User();
		user.setUname(uname);
		user.setId(id);
		user.setEmail(email);
		user.setPassword(password);
		
		
		query_flag = UserDao.getInstance().createUser(user);
		if(query_flag == 1) {
			msg = "가입이 완료되었습니다.";
			request.setAttribute("msg", msg);			
		}		
		
		return "sign.jsp";
	}

}
