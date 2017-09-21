package com.zxq.ssh.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zxq.ssh.dao.IGmjjDao;
import com.zxq.ssh.domain.Gmjj;

public class GmjjDaoImpl extends HibernateDaoSupport implements IGmjjDao{

	@Override
	public List<Gmjj> getAll() {
		// TODO Auto-generated method stub
		return getHibernateTemplate().loadAll(Gmjj.class);
	}

	@Override
	public List<Gmjj> firstlist(String hql) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().find(hql);
	}

}
