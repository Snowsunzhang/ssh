package com.zxq.ssh.service;

import java.util.List;

import com.zxq.ssh.domain.Qx;

public interface IQxService {
	void save(Qx qx);

	void update(Qx qx);

	void delete(Qx qx);

	List<Qx> getAll();

	List<Qx> select(String hql);
	
	Qx selectone(String hql);

	List<Qx> findByLoginUserId(String loginUserId);
}
