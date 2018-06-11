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
	
	public void createUser(User user) throws SQLException {
		SqlSession sqlSession = getDB().openSession(); //세션 열기
		sqlSession.insert("createUser", user); //세션 호출
		sqlSession.commit(); //commit
		sqlSession.close(); //세션 종료
		
	}
	
	public int checkUser(String email, String password) {
		int result;
		
		HashMap<String, String> user_info = new HashMap<>();
		user_info.put("email", email);
		user_info.put("password", password);
		
		SqlSession sqlSession = getDB().openSession();
		result = sqlSession.selectOne("checkUser", user_info);
		sqlSession.close();
		
		return result;
	}
}
