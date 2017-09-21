package com.zxq.ssh.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zxq.ssh.dao.IUsertableDao;

import com.zxq.ssh.domain.Usertable;

public class UsertableDaoImpl extends HibernateDaoSupport implements IUsertableDao{

	@Override
	public void save(Usertable usertable) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(usertable);
	}

	@Override
	public void update(Usertable usertable) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(usertable);
		
	}

	@Override
	public void delete(String usermame) {
		// TODO Auto-generated method stub
		Usertable usertable = get(usermame);
		if(usertable!=null)
		{
			getHibernateTemplate().delete(usertable);
		}

		
	}

	@Override
	public Usertable get(String usermame) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(Usertable.class,usermame);
	}

	@Override
	public List<Usertable> getAll() {
		// TODO Auto-generated method stub
		return getHibernateTemplate().loadAll(Usertable.class);
	}
	

}
