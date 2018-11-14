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
		SqlSession sqlSession = getDB().openSession(); //技记 凯扁
		List<Post> postArticle = sqlSession.selectList("getPostArticle");
		sqlSession.close();
		
		return postArticle;		
	}
	
	public List<Post> getNewerArticle() throws SQLException{
		SqlSession sqlSession = getDB().openSession(); //技记 凯扁
		List<Post> newerArticle = sqlSession.selectList("getNewerArticle");
		sqlSession.close();
		
		return newerArticle;		
	}
	
	public Post getArticle(int seq) throws SQLException{
		SqlSession sqlSession = getDB().openSession();
		Post article = (Post)sqlSession.selectOne("getArticle", seq);
		sqlSession.close();
		
		return article;
	}
	
	public List<Post> getNavArticle(String c_code){
		SqlSession sqlSession = getDB().openSession();
		List<Post> postList = sqlSession.selectList("getNavArticle", c_code);
		sqlSession.close();
		
		return postList;
	}

}
