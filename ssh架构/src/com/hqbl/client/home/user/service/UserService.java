package com.hqbl.client.home.user.service;

import com.hqbl.client.core.util.web.QueryBean;
import com.hqbl.client.home.user.entity.User;

public interface UserService {

	public abstract void add(User user);

	public abstract User get(int id);
	
	public QueryBean query(String hql,int offset,int limit,Object ... parmas);

}