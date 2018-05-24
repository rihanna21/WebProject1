package mybatis.config;


import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisDBConnector {
	private static SqlSessionFactory factory;
	
	//static ���� ������
	static {
		String resource = "mybatis/config/configuration.xml";
		
		try {
			//configuration ���Ϸκ��� DB������ �о��
			Reader reader = Resources.getResourceAsReader(resource);
			factory = new SqlSessionFactoryBuilder().build(reader);
			
			reader.close();
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("Mybatis Configuration err: " + e);
		}
	}
	
	public static SqlSessionFactory getSqlSession() {
		return factory;
	}
	
}
