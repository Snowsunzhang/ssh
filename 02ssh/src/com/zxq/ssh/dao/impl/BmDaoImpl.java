package com.zxq.ssh.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zxq.ssh.dao.IBmDao;
import com.zxq.ssh.domain.Bm;

public class BmDaoImpl extends HibernateDaoSupport implements IBmDao{

	@Override
	public List<Bm> getAll() {
		// TODO Auto-generated method stub
		return getHibernateTemplate().loadAll(Bm.class);
	}

}
