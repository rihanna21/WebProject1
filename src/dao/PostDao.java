package dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.Post;

public class PostDao extends CommonDao{
	public static PostDao getInstance() {
		PostDao _instance = new PostDao();
		_instance.setDB();
		return _instance;		
	}
	
	public List<Post> getPostArticle() throws SQLException{
		SqlSession sqlSession = getDB().openSession(); //���� ����
		List<Post> postArticle = sqlSession.selectList("getPostArticle");
		sqlSession.close();
		
		return postArticle;
		
	}

}
