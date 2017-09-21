package com.zxq.ssh.dao;

import java.util.List;

import com.zxq.ssh.domain.Fl;

public interface IFlDao {
	List<Fl> getAll();
	List<Fl> firstlist(String hql);
}
