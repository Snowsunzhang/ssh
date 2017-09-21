package com.zxq.ssh.service;

import java.util.List;

import com.zxq.ssh.domain.Fl;

public interface IFlService {
	List<Fl> getAll();
	List<Fl> firstlist(String hql);
}
