package com.zxq.ssh.web.action;

import java.util.List;

import com.zxq.ssh.domain.Glbm;
import com.zxq.ssh.service.IGlbmService;

public class GlbmAction {
	private IGlbmService glbmService;
	private Glbm glbm;
	List<Glbm> glbms;
	public IGlbmService getGlbmService() {
		return glbmService;
	}
	public void setGlbmService(IGlbmService glbmService) {
		this.glbmService = glbmService;
	}
	public Glbm getGlbm() {
		return glbm;
	}
	public void setGlbm(Glbm glbm) {
		this.glbm = glbm;
	}
	

}
