package com.zxq.ssh.service.Impl;

import java.util.List;

import com.zxq.ssh.dao.IQxDao;
import com.zxq.ssh.domain.Qx;
import com.zxq.ssh.service.IQxService;

public class QxServiceImpl implements IQxService{
	private IQxDao qxDao;
	public IQxDao getQxDao() {
		return qxDao;
	}

	public void setQxDao(IQxDao qxDao) {
		this.qxDao = qxDao;
	}

	@Override
	public void save(Qx qx) {
		// TODO Auto-generated method stub
		qxDao.save(qx);
	}

	@Override
	public void update(Qx qx) {
		// TODO Auto-generated method stub
		qxDao.update(qx);
	}

	@Override
	public void delete(Qx qx) {
		// TODO Auto-generated method stub
		qxDao.delete(qx);
	}

	@Override
	public List<Qx> getAll() {
		// TODO Auto-generated method stub
		return qxDao.getAll();
	}

	@Override
	public List<Qx> select(String hql) {
		// TODO Auto-generated method stub
		return qxDao.select(hql);
	}

	@Override
	public Qx selectone(String hql) {
		// TODO Auto-generated method stub
		return qxDao.selectone(hql);
	}

	@Override
	public List<Qx> findByLoginUserId(String loginUserId) {
		String hql = "select distinct m from Usertable u join u.roles r join r.qxs m where u.usermame = ?";
		return qxDao.findByHql(hql, loginUserId);
	}

}
