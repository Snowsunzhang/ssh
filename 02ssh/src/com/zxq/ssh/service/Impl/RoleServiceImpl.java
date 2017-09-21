package com.zxq.ssh.service.Impl;

import java.util.List;

import com.zxq.ssh.dao.IRoleDao;
import com.zxq.ssh.domain.Role;
import com.zxq.ssh.service.IRoleService;

public class RoleServiceImpl implements IRoleService{
	private IRoleDao roleDao;
	public IRoleDao getRoleDao() {
		return roleDao;
	}

	public void setRoleDao(IRoleDao roleDao) {
		this.roleDao = roleDao;
	}

	@Override
	public void save(Role role) {
		// TODO Auto-generated method stub
		roleDao.save(role);
	}

	@Override
	public void update(Role role) {
		// TODO Auto-generated method stub
		roleDao.update(role);
	}

	@Override
	public void delete(Role role) {
		// TODO Auto-generated method stub
		roleDao.delete(role);
	}

	@Override
	public List<Role> getAll() {
		// TODO Auto-generated method stub
		return roleDao.getAll();
	}

	@Override
	public List<Role> select(String hql) {
		// TODO Auto-generated method stub
		return roleDao.select(hql);
	}

	@Override
	public Role selectone(String hql) {
		// TODO Auto-generated method stub
		return roleDao.selectone(hql);
	}

	@Override
	public Role get(Integer id) {
		// TODO Auto-generated method stub
		return roleDao.get(id);
	}

}
