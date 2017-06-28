package com.hqbl.client.home.user.action;



import java.util.ArrayList;
import java.util.List;

import com.hqbl.client.core.util.web.QueryBean;
import com.hqbl.client.home.user.service.UserService;
import com.opensymphony.xwork2.ActionSupport;


public class UserAction extends ActionSupport{

	
	private UserService userService;
	
	private QueryBean qb = new QueryBean();
	
	private int offset;//起始条数
	
	private int limit;//结束条数
	
	private String search;
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
	//查询用户
	public String query(){
		
		String hql = "from User u";
		
		List params = new ArrayList(); 
		// 模糊查询
		if (null!=search && !search.equals("")) {
			hql += " where u.name like ?";
			params.add("%"+search+"%");
		}
		
		
		qb = userService.query(hql, offset, limit==0?10:limit,params.toArray());
		
		return SUCCESS;
	}
	
	public QueryBean getQb() {
		return qb;
	}

	public void setQb(QueryBean qb) {
		this.qb = qb;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public UserService getUserService() {
		return userService;
	}


	public String getSearch() {
		return search;
	}


	public void setSearch(String search) {
		this.search = search;
	}
	
	
}
