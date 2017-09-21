package com.zxq.ssh.web.action;

import java.util.List;

import javax.management.loading.PrivateClassLoader;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.zxq.ssh.domain.Bm;
import com.zxq.ssh.domain.Fl;
import com.zxq.ssh.service.IBmService;
import com.zxq.ssh.service.IFlService;

public class BmAction extends ActionSupport {
	private IBmService bmService;
	
	private Bm bm;

	List<Bm> bms;
	
	public IBmService getBmService() {
		return bmService;
	}
	public void setBmService(IBmService bmService) {
		this.bmService = bmService;
	}
	public Bm getBm() {
		return bm;
	}
	public void setBm(Bm bm) {
		this.bm = bm;
	}
	public void select()throws Exception{
		System.out.println("jinruhanshu");
		bms=bmService.getAll();
		String a="";
		for (int i = 0; i < bms.size(); i++) {
			a=a+bms.get(i).getBname()+",";
		}
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(a);	
	}
	

}
