package dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import dto.User;

public class UserDao extends CommonDao {
	//UserDao DB ����
	public static UserDao getInstance() {
		UserDao _instance = new UserDao();
		_instance.setDB();
		return _instance;		
	}
	
	public void createUser(User user) throws SQLException {
		//���� ����
		SqlSession sqlSession = getDB().openSession();
		//���� ȣ��
		sqlSession.insert("createUser", user);
		//commit
		sqlSession.commit();
		//���� ����
		sqlSession.close();
		
	}

}
