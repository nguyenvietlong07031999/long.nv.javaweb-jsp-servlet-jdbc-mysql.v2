package jp.vn.yuanyuan.service;

import jp.vn.yuanyuan.model.UserModel;

public interface IUserService {

	UserModel findByUserNameAndPasswordAndStatus(String userName,String password,Integer status);
	UserModel save(UserModel userModel);
	UserModel findOneByUserName(String userName);
	UserModel findOneByUserId(long userId);
}
