package com.zxq.ssh.dao;

import java.util.List;

import com.zxq.ssh.domain.Fl;
import com.zxq.ssh.domain.Gmjj;

public interface IGmjjDao {
	List<Gmjj> getAll();
	List<Gmjj> firstlist(String hql);
}
