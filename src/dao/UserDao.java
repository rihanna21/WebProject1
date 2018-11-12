package dao;

import java.sql.SQLException;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import dto.User;

public class UserDao extends CommonDao {
	//UserDao DB 연결
	public static UserDao getInstance() {
		UserDao _instance = new UserDao();
		_instance.setDB();
		return _instance;		
	}
	
	public int createUser(User user) throws SQLException {
		int result;
		
		SqlSession sqlSession = getDB().openSession(); //세션 열기
		result = sqlSession.insert("createUser", user); //세션 호출
		sqlSession.commit(); //commit
		sqlSession.close(); //세션 종료
		
		return result;
	}
	
	public int checkUser(HashMap<String, String> user_info) {
		int result;
		
		SqlSession sqlSession = getDB().openSession();
		result = sqlSession.selectOne("checkUser", user_info);
		sqlSession.close();
		
		return result;
	}
	
	public void updateUser(String email) {
		SqlSession sqlSession = getDB().openSession();
		sqlSession.update("updateUser_subs", email);
		sqlSession.commit(); //commit
		sqlSession.close();
	}
}
