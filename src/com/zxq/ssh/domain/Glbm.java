package com.zxq.ssh.domain;

/**
 * Glbm entity. @author MyEclipse Persistence Tools
 */

public class Glbm implements java.io.Serializable {

	// Fields

	private String glbmno;
	private String bmmc;

	// Constructors

	/** default constructor */
	public Glbm() {
	}

	/** minimal constructor */
	public Glbm(String glbmno) {
		this.glbmno = glbmno;
	}

	/** full constructor */
	public Glbm(String glbmno, String bmmc) {
		this.glbmno = glbmno;
		this.bmmc = bmmc;
	}

	// Property accessors

	public String getGlbmno() {
		return this.glbmno;
	}

	public void setGlbmno(String glbmno) {
		this.glbmno = glbmno;
	}

	public String getBmmc() {
		return this.bmmc;
	}

	public void setBmmc(String bmmc) {
		this.bmmc = bmmc;
	}

}