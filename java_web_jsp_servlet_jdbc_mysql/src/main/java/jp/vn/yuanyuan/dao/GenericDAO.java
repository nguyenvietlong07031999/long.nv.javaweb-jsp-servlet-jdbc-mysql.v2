package jp.vn.yuanyuan.dao;

import java.util.List;

import jp.vn.yuanyuan.mapper.RowMapper;

public interface GenericDAO<T>{

	
	
	<T> List<T> query(String sql,RowMapper<T> rowMapper,Object...parameters);
	void update(String sql,Object...parameters); // update and delete
	Long insert(String sql,Object...parameters); //	insert
	int count(String sql,Object...parameters);
}
