package action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandAjax;
import dao.PostDao;
import dto.Post;

public class NewPostAction implements CommandAjax{

	@Override
	public void requestAjax(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		//DB에서 최신 데이터 목록을 받아온다.
		PrintWriter out;
		List<Post> newerArticle = PostDao.getInstance().getNewerArticle();

		//json 데이터 생성
		String newerList = "{\"newerList\":[";
		
		for(int i = 0; i < newerArticle.size(); i++) {
			if(i != 0)
				newerList += ",";
			newerList += "{";
			newerList += "\"seq\":\"" + newerArticle.get(i).getSeq() + "\",";
			newerList += "\"title\":\"" + newerArticle.get(i).getTitle() + "\",";
			newerList += "\"sub_title\":\"" + newerArticle.get(i).getSub_title() + "\",";
			newerList += "\"w_id\":\"" + newerArticle.get(i).getW_id() + "\",";
			newerList += "\"createdate\":\"" + newerArticle.get(i).getCreatedate() + "\"";
			newerList +="}";
		}
		newerList += "]}";
		
		out = response.getWriter();
		out.print(newerList);
		out.flush();	
			
	}
}
