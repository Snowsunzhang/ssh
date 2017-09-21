package com.zxq.ssh.domain;

/**
 * Fl entity. @author MyEclipse Persistence Tools
 */

public class Fl implements java.io.Serializable {

	// Fields

	private String fno;
	private String fname;

	// Constructors

	/** default constructor */
	public Fl() {
	}

	/** full constructor */
	public Fl(String fno, String fname) {
		this.fno = fno;
		this.fname = fname;
	}

	// Property accessors

	public String getFno() {
		return this.fno;
	}

	public void setFno(String fno) {
		this.fno = fno;
	}

	public String getFname() {
		return this.fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

}