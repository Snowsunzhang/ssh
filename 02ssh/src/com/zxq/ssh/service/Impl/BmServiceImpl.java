package com.zxq.ssh.service.Impl;

import java.util.List;

import com.zxq.ssh.dao.IBmDao;
import com.zxq.ssh.domain.Bm;
import com.zxq.ssh.service.IBmService;

public class BmServiceImpl implements IBmService{
	private IBmDao bmDao;
	
	public IBmDao getBmDao() {
		return bmDao;
	}

	public void setBmDao(IBmDao bmDao) {
		this.bmDao = bmDao;
	}

	@Override
	public List<Bm> getAll() {
		// TODO Auto-generated method stub
		return bmDao.getAll();
	}

}
