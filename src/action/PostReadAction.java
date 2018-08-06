package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandAction;
import dao.PostDao;
import dto.Post;

public class PostReadAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		Post article = PostDao.getInstance().getArticle(seq);
		request.setAttribute("article", article);
		
		return "post.jsp";
	}

}
