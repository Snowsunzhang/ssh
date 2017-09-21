package com.zxq.ssh.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * Qx entity. @author MyEclipse Persistence Tools
 */

public class Qx  {

	// Fields

	private Integer id;
	private String name;


	// Constructors

	/** default constructor */
	public Qx() {
	}

	/** minimal constructor */
	public Qx(Integer id) {
		this.id = id;
	}

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

	@Override
	public String toString() {
		return "Qx [id=" + id + ", name=" + name + "]";
	}
	
}