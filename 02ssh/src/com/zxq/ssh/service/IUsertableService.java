package com.zxq.ssh.service;

import java.util.List;

import com.zxq.ssh.domain.Usertable;

public interface IUsertableService {
	void save(Usertable usertable);

	void update(Usertable usertable);

	void delete(String usermame);

	Usertable get(String usermame);

	List<Usertable> getAll();

}
