package jp.vn.yuanyuan.service.impl;

import jp.vn.yuanyuan.dao.IUserDAO;
import jp.vn.yuanyuan.dao.impl.UserDAO;
import jp.vn.yuanyuan.model.UserModel;
import jp.vn.yuanyuan.service.IUserService;

public class UserService implements IUserService {
	
	private IUserDAO userDAO;
	
	public UserService() {
		userDAO = new UserDAO();
	}

	@Override
	public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
		return userDAO.findByUserNameAndPasswordAndStatus(userName,password,status);
	}

	@Override
	public UserModel save(UserModel userModel) {
		Long userId = userDAO.save(userModel);
		System.out.println(userId);
		return null;
	}

	@Override
	public UserModel findOneByUserName(String userName) {
		UserModel userModel = userDAO.findOneByUserName(userName);
		return userModel;
	}

	@Override
	public UserModel findOneByUserId(long userId) {
		UserModel userModel = userDAO.findOneByUserId(userId);
		return userModel;
	}
	
	

}
