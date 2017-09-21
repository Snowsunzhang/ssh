package com.zxq.ssh.dao;

import java.util.List;

import com.zxq.ssh.domain.Role;

public interface IRoleDao {
	void save(Role role);

	void update(Role role);

	void delete(Role role);

	Role get(Integer id);
	List<Role> getAll();

	List<Role> select(String hql);
	
	Role selectone(String hql);
}
