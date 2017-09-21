package com.zxq.ssh.domain;

import java.util.HashSet;
import java.util.Set;

import com.sun.org.apache.bcel.internal.generic.NEW;

/**
 * Role entity. @author MyEclipse Persistence Tools
 */

public class Role{

	// Fields

	private Integer id;
	private String name;
	private Set<Qx> qxs=new HashSet<Qx>();
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Set<Qx> getQxs() {
		return qxs;
	}
	public void setQxs(Set<Qx> qxs) {
		this.qxs = qxs;
	}

	// Constructors
	public Role(){
		
	}
	public Role(Integer id)
	{
		this.id=id;
	}

}