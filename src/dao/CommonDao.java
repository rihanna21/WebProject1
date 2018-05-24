package dao;

import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.config.MybatisDBConnector;

public class CommonDao {
	private SqlSessionFactory myDB;
	
	public void setDB() {
		myDB = MybatisDBConnector.getSqlSession();
	}
	
	protected SqlSessionFactory getDB() {
		return myDB;
	}

}
