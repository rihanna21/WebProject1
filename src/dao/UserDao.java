package dao;

import java.sql.SQLException;

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
		//세션 열기
		SqlSession sqlSession = getDB().openSession();
		//세션 호출
		sqlSession.insert("createUser", user);
		//commit
		sqlSession.commit();
		//세션 종료
		sqlSession.close();
		
	}

}
