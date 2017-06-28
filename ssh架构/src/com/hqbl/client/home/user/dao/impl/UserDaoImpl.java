package com.hqbl.client.home.user.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.ScrollableResults;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.hqbl.client.core.util.web.QueryBean;
import com.hqbl.client.home.user.dao.UserDao;
import com.hqbl.client.home.user.entity.User;


public class UserDaoImpl implements UserDao {

	
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	
	public void add(User user){
		getSession().save(user);
	}
	
	public User get(int id){
		return (User)getSession().load(User.class, id);
	}
	
	public QueryBean page(String hql,int offset,int limit,Object ... params){
		
		Session session = getSession();
		
		Query query = session.createQuery(hql);
		
		if (params!=null) {
			for (int i = 0; i < params.length; i++) {
				query.setParameter(i, params[i]);
			}
		}
		
		ScrollableResults scroll = query.scroll();
		scroll.last();
		
		QueryBean qb = new QueryBean();
		qb.setTotal(scroll.getRowNumber()+1);
		
		
		query.setFirstResult(offset);//起始条数
		query.setMaxResults(limit);//每 页显示 数
		List list = query.list();
		qb.setRows(list);
		return qb;
	}

	
}
