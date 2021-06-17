package stackjava.com.springmvchello.controller;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

public interface UserDao {
	public List<HanshinVO> selectHanshinList(SampleDefaultVO searchVO, SqlMapClient sqlmapClient);
	public List<HanshinVO> findLike(String id, SqlMapClient sqlmapClient);
	public List<HanshinVO> getAll(SqlMapClient sqlmapClient);
	public UserTEO addUser(UserTEO user, SqlMapClient sqlmapClient);
	public UserTEO getUserById(Integer id, SqlMapClient sqlmapClient);
	public void deleteUserById(Integer id, SqlMapClient sqlmapClient);
}
