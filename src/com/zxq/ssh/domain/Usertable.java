package com.zxq.ssh.domain;

import java.util.HashSet;
import java.util.Set;

import com.sun.mail.handlers.text_html;
import com.sun.org.apache.bcel.internal.generic.NEW;

/**
 * Usertable entity. @author MyEclipse Persistence Tools
 */

public class Usertable{

	// Fields

	private String usermame;
	private String gsid;
	private String cname;
	private String cadress;
	private String szdy;
	private String email;
	private String clegalpersonv;
	private String yb;
	private String introduction;
	private String pwd1;
	private String js;
	private Set<Role> roles =new HashSet<Role>();	
	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	public String getUsermame() {
		return this.usermame;
	}

	public void setUsermame(String usermame) {
		this.usermame = usermame;
	}

	public String getGsid() {
		return this.gsid;
	}

	public void setGsid(String gsid) {
		this.gsid = gsid;
	}

	public String getCname() {
		return this.cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCadress() {
		return this.cadress;
	}

	public void setCadress(String cadress) {
		this.cadress = cadress;
	}

	public String getSzdy() {
		return this.szdy;
	}

	public void setSzdy(String szdy) {
		this.szdy = szdy;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getClegalpersonv() {
		return this.clegalpersonv;
	}

	public void setClegalpersonv(String clegalpersonv) {
		this.clegalpersonv = clegalpersonv;
	}

	public String getYb() {
		return this.yb;
	}

	public void setYb(String yb) {
		this.yb = yb;
	}

	public String getIntroduction() {
		return this.introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getPwd1() {
		return this.pwd1;
	}

	public void setPwd1(String pwd1) {
		this.pwd1 = pwd1;
	}

	public String getJs() {
		return this.js;
	}

	public void setJs(String js) {
		this.js = js;
	}

}