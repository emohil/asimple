package com.norming.ess.user1.dao;

import java.util.List;

import com.norming.ess.user1.model.User;

public interface IUserDao {
	List<User> selectAll();
	
	User selectById(String id);
	
	int insert(User user);
	
	int update(User user);
	
	int deleteUser(String id);
}