package stackjava.com.springmvchello.controller;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

public class UserDaoIbatis implements UserDao{

	public List<HanshinVO> selectHanshinList(SampleDefaultVO searchVO, SqlMapClient sqlmapClient) {
		try
		{
			List<HanshinVO> list = (List<HanshinVO>)sqlmapClient.queryForList("hanshin.selectHanshinList", searchVO);
			return list;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
		return null;
	}
	public List<HanshinVO> getAll(SqlMapClient sqlmapClient) {
		try
		{
			List<HanshinVO> list = (List<HanshinVO>)sqlmapClient.queryForList("hanshin.getAll");
			return list;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
		return null;
	}
	
	public List<HanshinVO> findLike(String id, SqlMapClient sqlmapClient) {
		try
		{
			List<HanshinVO> list = (List<HanshinVO>)sqlmapClient.queryForList("hanshin.findLike", id);
			return list;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
		return null;
	}
	
	public UserTEO addUser(UserTEO user, SqlMapClient sqlmapClient) {
		try
		{
			Integer id = (Integer)sqlmapClient.queryForObject("user.getMaxId");
			id = id == null ? 1 : id + 1;
			user.setId(id);
			user.setStatus(1);
			sqlmapClient.insert("user.addUser", user);
			user = getUserById(id, sqlmapClient);
			return user;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
		return null;
	}

	public UserTEO getUserById(Integer id, SqlMapClient sqlmapClient) {
		try
		{
			UserTEO user = (UserTEO)sqlmapClient.queryForObject("user.getUserById", id);
			return user;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
		return null;
	}

	public void deleteUserById(Integer id, SqlMapClient sqlmapClient) {
		try
		{
			sqlmapClient.delete("user.deleteUserById", id);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
	}
	
}
