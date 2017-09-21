package com.zxq.ssh.web.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.zxq.ssh.domain.Gmjj;
import com.zxq.ssh.service.IGmjjService;

public class GmjjAction {
	private IGmjjService gmjjService;
	private Gmjj gmjj;
	List<Gmjj> gmjjs;
	public IGmjjService getGmjjService() {
		return gmjjService;
	}
	public void setGmjjService(IGmjjService gmjjService) {
		this.gmjjService = gmjjService;
	}
	public Gmjj getGmjj() {
		return gmjj;
	}
	public void setGmjj(Gmjj gmjj) {
		this.gmjj = gmjj;
	}
	public List<Gmjj> getGmjjs() {
		return gmjjs;
	}
	public void setGmjjs(List<Gmjj> gmjjs) {
		this.gmjjs = gmjjs;
	}
	
	public void gmjjfirst() throws Exception
	{
		String hql="from Gmjj where Code like '_0000'";
		gmjjs=gmjjService.firstlist(hql);
		String a="";
		for (int i = 0; i < gmjjs.size(); i++) {
			a=a+gmjjs.get(i).getCode()+gmjjs.get(i).getTitle()+",";
		}
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(a);	
	}
	public void gmjjsecond() throws Exception
	{
		System.out.println("jinruhanshugmjjsecong()");
		HttpServletRequest request=ServletActionContext.getRequest();
		String n=request.getParameter("s");
		String hql="from Gmjj where Code like '"+n+"__00'";
		gmjjs=gmjjService.firstlist(hql);
		String a="";
		for (int i = 0; i < gmjjs.size(); i++) {
			a=a+gmjjs.get(i).getCode()+gmjjs.get(i).getTitle()+",";
		}
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(a);	
	}
	public void gmjjthird() throws Exception
	{
		System.out.println("jinruhanshuthird()");
		HttpServletRequest request=ServletActionContext.getRequest();
		String n=request.getParameter("s");
		String hql="from Gmjj where Code like '"+n+"__'";
		gmjjs=gmjjService.firstlist(hql);
		String a="";
		for (int i = 0; i < gmjjs.size(); i++) {
			a=a+gmjjs.get(i).getCode()+gmjjs.get(i).getTitle()+",";
		}
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(a);
	}
	
	

}
