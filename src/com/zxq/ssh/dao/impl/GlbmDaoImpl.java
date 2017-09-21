package com.zxq.ssh.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zxq.ssh.dao.IGlbmDao;
import com.zxq.ssh.domain.Glbm;

public class GlbmDaoImpl extends HibernateDaoSupport implements IGlbmDao {

	@Override
	public List<Glbm> getAll() {
		// TODO Auto-generated method stub
		return getHibernateTemplate().loadAll(Glbm.class);
	}
	
	
}
