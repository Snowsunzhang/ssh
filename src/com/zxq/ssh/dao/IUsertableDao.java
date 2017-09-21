package com.zxq.ssh.dao;

import java.util.List;

import com.zxq.ssh.domain.Usertable;

public interface IUsertableDao {
	void save(Usertable usertable);

	void update(Usertable usertable);

	void delete(String usermame);

	Usertable get(String usermame);

	List<Usertable> getAll();


}
