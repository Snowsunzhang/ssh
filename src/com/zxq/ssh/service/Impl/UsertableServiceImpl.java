package com.zxq.ssh.service.Impl;

import java.util.List;

import com.zxq.ssh.dao.IUsertableDao;
import com.zxq.ssh.domain.Usertable;
import com.zxq.ssh.service.IUsertableService;

public class UsertableServiceImpl implements IUsertableService {
	private IUsertableDao usertableDao;

	
	public void setUsertableDao(IUsertableDao usertableDao)
	{
		this.usertableDao=usertableDao;
	}
	@Override
	public void save(Usertable usertable) {
		// TODO Auto-generated method stub
		usertableDao.save(usertable);
	}


	@Override
	public void update(Usertable usertable) {
		// TODO Auto-generated method stub
		usertableDao.update(usertable);
	}

	@Override
	public void delete(String usermame) {
		// TODO Auto-generated method stub
		usertableDao.delete(usermame);
	}

	@Override
	public Usertable get(String usermame) {
		// TODO Auto-generated method stub
		return usertableDao.get(usermame);
	}

	@Override
	public List<Usertable> getAll() {
		// TODO Auto-generated method stub
		return usertableDao.getAll();
	}

}
