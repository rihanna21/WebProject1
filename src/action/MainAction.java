package action;

import java.util.List;

import javax.servlet.http.*;

import controller.CommandAction;
import dao.PostDao;
import dto.Post;

public class MainAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		List<Post> postArticle = PostDao.getInstance().getPostArticle();
		request.setAttribute("postArticle", postArticle);
		
		return "main.jsp";
	}

}
