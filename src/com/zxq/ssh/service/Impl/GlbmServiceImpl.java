package com.zxq.ssh.service.Impl;

import java.util.List;

import com.zxq.ssh.dao.IGlbmDao;
import com.zxq.ssh.domain.Glbm;
import com.zxq.ssh.service.IGlbmService;

public class GlbmServiceImpl implements IGlbmService {

	private IGlbmDao glbmDao;
	public IGlbmDao getGlbmDao() {
		return glbmDao;
	}
	public void setGlbmDao(IGlbmDao glbmDao) {
		this.glbmDao = glbmDao;
	}
	@Override
	public List<Glbm> getAll() {
		// TODO Auto-generated method stub
		return glbmDao.getAll();
	}


}
