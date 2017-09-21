package com.zxq.ssh.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


import com.zxq.ssh.dao.IFlDao;
import com.zxq.ssh.domain.Fl;

public class FlDaoImpl extends HibernateDaoSupport implements IFlDao {

	@Override
	public List<Fl> getAll() {
		// TODO Auto-generated method stub
		return getHibernateTemplate().loadAll(Fl.class);
	}
	@Override
	public List<Fl> firstlist(String hql) {
		// TODO Auto-generated method stub
	
		return getHibernateTemplate().find(hql);
	}

	

}
