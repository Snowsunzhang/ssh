package com.zxq.ssh.dao.impl;

import java.util.List;

import org.hibernate.classic.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zxq.ssh.dao.IInfotableDao;
import com.zxq.ssh.domain.Infotable;

public class InfotableDaoImpl extends HibernateDaoSupport implements IInfotableDao{

	@Override
	public void save(Infotable infotable) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(infotable);
	}

	@Override
	public void update(Infotable infotable) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(infotable);
	}

	@Override
	public void delete(Infotable infotable) {
		// TODO Auto-generated method stub
	/*	Infotable infotable=get(infono);
		if(infotable!=null)
		{*/
			getHibernateTemplate().delete(infotable);
		/*}*/
	}
	

	@Override
	public List<Infotable> getAll() {
		// TODO Auto-generated method stub
		return getHibernateTemplate().loadAll(Infotable.class);
	}

	@Override
	public List<Infotable> select(String hql) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().find(hql);
	}

	@Override
	public Infotable selectone(String hql) {
		// TODO Auto-generated method stub
		List<Infotable> infotables=getHibernateTemplate().find(hql);
		
		return infotables.get(0);
	}

	@Override
	public Infotable get(Integer infono) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(Infotable.class, infono);
	}




}
