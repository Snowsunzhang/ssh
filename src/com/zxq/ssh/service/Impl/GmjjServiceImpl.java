package com.zxq.ssh.service.Impl;

import java.util.List;

import com.zxq.ssh.dao.IGmjjDao;
import com.zxq.ssh.domain.Gmjj;
import com.zxq.ssh.service.IGmjjService;

public class GmjjServiceImpl implements IGmjjService{
	private IGmjjDao gmjjDao;

	public IGmjjDao getGmjjDao() {
		return gmjjDao;
	}

	public void setGmjjDao(IGmjjDao gmjjDao) {
		this.gmjjDao = gmjjDao;
	}

	@Override
	public List<Gmjj> getAll() {
		// TODO Auto-generated method stub
		return gmjjDao.getAll();
	}

	@Override
	public List<Gmjj> firstlist(String hql) {
		// TODO Auto-generated method stub
		return gmjjDao.firstlist(hql);
	}
	

}
