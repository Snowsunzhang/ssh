package com.zxq.ssh.service;

import java.util.List;

import com.zxq.ssh.domain.Infotable;


public interface IInfotableService {
	void save(Infotable infotable);

	void update(Infotable infotable);

	void delete(Infotable infotable);

	Infotable get(Integer infono);

	List<Infotable> getAll();
	
	List<Infotable> select(String hql);
	
	Infotable selectone(String hql);
}
