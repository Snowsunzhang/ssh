package com.zxq.ssh.domain;

/**
 * Bm entity. @author MyEclipse Persistence Tools
 */

public class Bm implements java.io.Serializable {

	// Fields

	private String bno;
	private String bname;

	// Constructors

	/** default constructor */
	public Bm() {
	}

	/** full constructor */
	public Bm(String bno, String bname) {
		this.bno = bno;
		this.bname = bname;
	}

	// Property accessors

	public String getBno() {
		return this.bno;
	}

	public void setBno(String bno) {
		this.bno = bno;
	}

	public String getBname() {
		return this.bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

}