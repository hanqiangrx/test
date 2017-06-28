package com.hqbl.client.home.user.dao;

import com.hqbl.client.core.util.web.QueryBean;
import com.hqbl.client.home.user.entity.User;

public interface UserDao {

	public abstract void add(User user);

	public abstract User get(int id);
	
	public QueryBean page(String hql,int offset,int limit,Object ... params);

}