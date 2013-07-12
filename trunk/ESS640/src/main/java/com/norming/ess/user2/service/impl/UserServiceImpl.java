package com.norming.ess.user2.service.impl;

import java.util.List;

import com.norming.ess.user2.dao.IUserDao;
import com.norming.ess.user2.model.User;
import com.norming.ess.user2.service.IUserService;

public class UserServiceImpl implements IUserService{

	private IUserDao userDao;
	
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}

	public int addUser(User user) {
		return userDao.insert(user);
	}

	public int editUser(User user) {
		return userDao.update(user);
	}

	public List<User> findAll() {
		return userDao.selectAll();
	}

	public User findUserById(String id) {
		return userDao.selectById(id);
	}

	@Override
	public int deleteUser(String id) {
		
		return userDao.deleteUser(id);
	}
}