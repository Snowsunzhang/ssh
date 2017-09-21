package com.zxq.ssh.dao;

import java.util.List;

import com.zxq.ssh.domain.Qx;

public interface IQxDao {
	void save(Qx qx);

	void update(Qx qx);

	void delete(Qx qx);

	List<Qx> getAll();

	List<Qx> select(String hql);
	
	Qx selectone(String hql);
	
	 List findByHql(String hql, Object... objects);

}
