package com.hqbl.client.home.user.service.impl;

import com.hqbl.client.core.util.web.QueryBean;
import com.hqbl.client.home.user.dao.impl.UserDaoImpl;
import com.hqbl.client.home.user.entity.User;
import com.hqbl.client.home.user.service.UserService;


public class UserServiceImpl implements UserService {

	private UserDaoImpl userDao;

	public void setUserDao(UserDaoImpl userDao) {
		this.userDao = userDao;
	}
	
	public void add(User user){
		userDao.add(user);
	}
	
	public User get(int id){
		return userDao.get(id);
	}

	public QueryBean query(String hql, int offset, int limit, Object ... params) {
		return userDao.page(hql, offset, limit, params);
	}
}
