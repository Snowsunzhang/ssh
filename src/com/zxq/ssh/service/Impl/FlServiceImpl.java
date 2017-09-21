package com.zxq.ssh.service.Impl;

import java.util.List;

import com.zxq.ssh.dao.IFlDao;
import com.zxq.ssh.domain.Fl;
import com.zxq.ssh.service.IFlService;

public class FlServiceImpl implements IFlService{
	private IFlDao flDao;
	public void setFlDao(IFlDao flDao) {
		this.flDao = flDao;
	}
	public IFlDao getFlDao() {
		return flDao;
	}
	@Override
	public List<Fl> getAll() {
		// TODO Auto-generated method stub
		return flDao.getAll();
	}
	@Override
	public List<Fl> firstlist(String hql) {
		// TODO Auto-generated method stub
		return flDao.firstlist(hql);
	}

}
