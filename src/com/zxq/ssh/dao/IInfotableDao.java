package com.zxq.ssh.dao;

import java.util.List;

import com.zxq.ssh.domain.Fl;
import com.zxq.ssh.domain.Infotable;


public interface IInfotableDao {
	void save(Infotable infotable);

	void update(Infotable infotable);

	void delete(Infotable infotable);

	Infotable get(Integer infono);

	List<Infotable> getAll();

	List<Infotable> select(String hql);
	
	Infotable selectone(String hql);

}
