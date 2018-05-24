package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandAction;
import dao.UserDao;
import dto.User;

public class JoinAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String uname = request.getParameter("lastName") + " " + request.getParameter("firstName");
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User user = new User();
		user.setUname(uname);
		user.setId(id);
		user.setEmail(email);
		user.setPassword(password);
		
		UserDao.getInstance().createUser(user);
		
		return null;
	}

}
