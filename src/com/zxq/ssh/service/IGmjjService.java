package com.zxq.ssh.service;

import java.util.List;

import com.zxq.ssh.domain.Fl;
import com.zxq.ssh.domain.Gmjj;

public interface IGmjjService {
	List<Gmjj> getAll();
	List<Gmjj> firstlist(String hql);
}
