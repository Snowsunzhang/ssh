package com.zxq.ssh.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zxq.ssh.dao.IQxDao;
import com.zxq.ssh.domain.Qx;

public class QxDaoImpl extends HibernateDaoSupport implements IQxDao {

	@Override
	public void save(Qx qx) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(qx);
	}

	@Override
	public void update(Qx qx) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(qx);
	}

	@Override
	public void delete(Qx qx) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(qx);
	}

	@Override
	public List<Qx> getAll() {
		// TODO Auto-generated method stub
		return getHibernateTemplate().loadAll(Qx.class);
	}

	@Override
	public List<Qx> select(String hql) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().find(hql);
	}

	@Override
	public Qx selectone(String hql) {
		// TODO Auto-generated method stub
		List<Qx> qxs=getHibernateTemplate().find(hql);
		return qxs.get(0);
	}

	@Override
	public List findByHql(String hql, Object... objects) {
		return getHibernateTemplate().find(hql, objects);
	}

}
