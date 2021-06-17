package stackjava.com.springmvchello.controller;

import java.io.Reader;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class TestMain {
	public static void main(String[] args) throws Exception 
	{
		UserDao manager = new UserDaoIbatis();
		
		Reader reader = Resources.getResourceAsReader("sql-maps-config.xml");
		SqlMapClient sqlmapClient = SqlMapClientBuilder.buildSqlMapClient (reader);
		
//		UserTEO user = new UserTEO();
//		user.setId(1);
//		user.setName("Demo User");
//		user.setPassword("password");
//		user.setEmail("demo-user@howtodoinjava.com");
//		user.setStatus(1);
//		
//		manager.addUser(user,sqlmapClient);
		
		UserTEO createdUser = manager.getUserById(1, sqlmapClient);
		System.out.println(createdUser.getEmail());
		System.out.println("==========");
		
//		List<HanshinVO> list = manager.getAll(sqlmapClient);
//		for (HanshinVO han : list) {
//			System.out.println("test: " + han.getStatus() + " --- " + han.getApp_date());
//		}
		
		
//		List<HanshinVO> list = manager.findLike("complete", sqlmapClient);
//		for (HanshinVO han : list) {
//			System.out.println("test: " + han.getStatus());
//		}
		
		SampleDefaultVO searchVO = new SampleDefaultVO("1", "xyz");
		List<HanshinVO> list = manager.selectHanshinList(searchVO, sqlmapClient);
		for (HanshinVO han : list) {
			System.out.println("Test: " + han.getStatus());
		}
		
		
//		manager.deleteUserById(1, sqlmapClient);
	}
}
