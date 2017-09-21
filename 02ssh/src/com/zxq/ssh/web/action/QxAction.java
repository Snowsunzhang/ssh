package com.zxq.ssh.web.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zxq.ssh.domain.Qx;
import com.zxq.ssh.service.IQxService;

public class QxAction  extends ActionSupport{
	private IQxService qxService;
	private Qx qx;
	List<Qx> qxs;
	public IQxService getQxService() {
		return qxService;
	}
	public void setQxService(IQxService qxService) {
		this.qxService = qxService;
	}
	public Qx getQx() {
		return qx;
	}
	public void setQx(Qx qx) {
		this.qx = qx;
	}
	public List<Qx> getQxs() {
		return qxs;
	}
	public void setQxs(List<Qx> qxs) {
		this.qxs = qxs;
	}
	//方法
	//获得全部权限信息
	public String getall()throws Exception{
		qxs=qxService.getAll();
		return SUCCESS;
	}

}
