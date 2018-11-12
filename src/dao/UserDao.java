package dao;

import java.sql.SQLException;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import dto.User;

public class UserDao extends CommonDao {
	//UserDao DB ����
	public static UserDao getInstance() {
		UserDao _instance = new UserDao();
		_instance.setDB();
		return _instance;		
	}
	
	public int createUser(User user) throws SQLException {
		int result;
		
		SqlSession sqlSession = getDB().openSession(); //���� ����
		result = sqlSession.insert("createUser", user); //���� ȣ��
		sqlSession.commit(); //commit
		sqlSession.close(); //���� ����
		
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
