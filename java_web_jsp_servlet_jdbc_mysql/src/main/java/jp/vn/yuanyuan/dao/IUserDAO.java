package jp.vn.yuanyuan.dao;

import jp.vn.yuanyuan.model.UserModel;

public interface IUserDAO extends GenericDAO<UserModel>{
	UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status);
	Long save(UserModel model);
	UserModel findOneByUserName(String userName);
	UserModel findOneByUserId(long userId);

}
