package com.zxq.ssh.service.Impl;

import java.util.List;

import com.zxq.ssh.dao.IInfotableDao;
import com.zxq.ssh.domain.Infotable;
import com.zxq.ssh.service.IInfotableService;

public class InfotableServiceImpl implements IInfotableService{
	private IInfotableDao infotableDao;
	public IInfotableDao getInfotableDao() {
		return infotableDao;
	}

	public void setInfotableDao(IInfotableDao infotableDao) {
		this.infotableDao = infotableDao;
	}

	@Override
	public void save(Infotable infotable) {
		// TODO Auto-generated method stub
		infotableDao.save(infotable);
		
	}

	@Override
	public void update(Infotable infotable) {
		// TODO Auto-generated method stub
		infotableDao.update(infotable);
		
	}

	@Override
	public void delete(Infotable infotable ) {
		// TODO Auto-generated method stub
		infotableDao.delete(infotable );
	}

	@Override
	public Infotable get(Integer infono) {
		// TODO Auto-generated method stub
		return infotableDao.get(infono);
	}

	@Override
	public List<Infotable> getAll() {
		// TODO Auto-generated method stub
		return infotableDao.getAll();
	}

	@Override
	public List<Infotable> select(String hql) {
		// TODO Auto-generated method stub
		return infotableDao.select(hql);
	}

	@Override
	public Infotable selectone(String hql) {
		// TODO Auto-generated method stub
		return infotableDao.selectone(hql);
	}
	

}
