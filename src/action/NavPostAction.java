package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandAction;
import dao.PostDao;
import dto.Post;

public class NavPostAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String c_code = request.getParameter("c_code");
		
		List<Post> postList = PostDao.getInstance().getNavArticle(c_code);
		request.setAttribute("postList", postList);
		
		return "postList.jsp";
	}

}
