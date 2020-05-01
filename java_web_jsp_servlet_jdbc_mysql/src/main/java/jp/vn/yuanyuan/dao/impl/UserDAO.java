package jp.vn.yuanyuan.dao.impl;

import java.util.List;

import jp.vn.yuanyuan.dao.IUserDAO;
import jp.vn.yuanyuan.mapper.UserMapper;
import jp.vn.yuanyuan.model.UserModel;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {

	@Override
	public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
		
		StringBuilder sql = new StringBuilder("select * from user as u");
		sql.append(" inner join role as r on r.id=u.roleid");
		sql.append(" where username=? and password = ? and status=?");
		List<UserModel> users = query(sql.toString(),new UserMapper(),userName,password,status);
		return users.isEmpty() ? null : users.get(0);
	}

	@Override
	public Long save(UserModel userModel) {
		StringBuilder sql = new StringBuilder("insert into user ");
		sql.append(" (username,password,fullname,status,roleid,createdby,createddate)");
		sql.append(" values (?,?,?,?,?,?,?)");
		
		return insert(sql.toString(),userModel.getUserName(),userModel.getPassword(),userModel.getFullName(),
									userModel.getStatus(),userModel.getRoleId(),userModel.getCreatedby(),userModel.getCreatedDate());
		
	}

	@Override
	public UserModel findOneByUserName(String userName) {
		String sql ="select * from user where username=?";
		List<UserModel> users = query(sql,new UserMapper(),userName);
		return users.isEmpty() ? null : users.get(0);
	}

	@Override
	public UserModel findOneByUserId(long userId) {
		StringBuilder sql = new StringBuilder("select * from user");
		sql.append(" where id =?");
		List<UserModel> users = query(sql.toString(),new UserMapper(),userId);
		return users.isEmpty() ? null : users.get(0);
	}

}
