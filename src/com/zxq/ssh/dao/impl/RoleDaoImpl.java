package com.zxq.ssh.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zxq.ssh.dao.IRoleDao;
import com.zxq.ssh.domain.Role;

public class RoleDaoImpl  extends HibernateDaoSupport implements IRoleDao{
	@Override
	public void save(Role role) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(role);
	}

	@Override
	public void update(Role role) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(role);
	}

	@Override
	public void delete(Role role) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(role);
	}

	@Override
	public List<Role> getAll() {
		// TODO Auto-generated method stub
		return getHibernateTemplate().loadAll(Role.class);
	}

	@Override
	public List<Role> select(String hql) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().find(hql);
	}

	@Override
	public Role selectone(String hql) {
		// TODO Auto-generated method stub
		List<Role> roles=getHibernateTemplate().find(hql);
		return roles.get(0);
	}

	@Override
	public Role get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(Role.class, id);
	}


}
