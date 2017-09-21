package com.zxq.ssh.web.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.zxq.ssh.domain.Fl;
import com.zxq.ssh.service.IFlService;

public class FlAction  extends ActionSupport {
	private IFlService flService;
	private Fl fl;
	List<Fl> fls;
	public List<Fl> getFls() {
		return fls;
	}
	public void setFls(List<Fl> fls) {
		this.fls = fls;
	}
	public IFlService getFlService() {
		return flService;
	}
	public void setFlService(IFlService flService) {
		this.flService = flService;
	}
	public Fl getFl() {
		return fl;
	}
	public void setFl(Fl fl) {
		this.fl = fl;
	}
	
	public String first()
	{
		String hql="from Fl where fno like '___0000'";
		fls=flService.firstlist(hql);
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("fls",fls);
		return SUCCESS; 
	}
	public void flfirst() throws Exception
	{
		String hql="from Fl where fno like '__00000'";
		fls=flService.firstlist(hql);
		String a="";
		for (int i = 0; i < fls.size(); i++) {
			a=a+fls.get(i).getFno()+fls.get(i).getFname()+",";
		}
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(a);	
	}
	public void returnall()throws Exception{
		String hql="from Fl";
		fls=flService.firstlist(hql);
		String a="";
		for (int i = 0; i < fls.size(); i++) {
			a=a+fls.get(i).getFno()+fls.get(i).getFname()+",";
		}
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(a);	
	}
	public void flsecond() throws Exception
	{
		System.out.println("jinruhanshu");
		HttpServletRequest request=ServletActionContext.getRequest();
		String n=request.getParameter("s");
		String hql="from Fl where fno like '"+n+"__00'";
		fls=flService.firstlist(hql);
		String a="";
		for (int i = 0; i < fls.size(); i++) {
			a=a+fls.get(i).getFno()+fls.get(i).getFname()+",";
		}
		System.out.println(a);
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(a);	
	}
	public void flthird() throws Exception
	{
		System.out.println("jinruhanshu");
		HttpServletRequest request=ServletActionContext.getRequest();
		String n=request.getParameter("s");
		String hql="from Fl where fno like '"+n+"__'";
		fls=flService.firstlist(hql);
		String a="";
		for (int i = 0; i < fls.size(); i++) {
			a=a+fls.get(i).getFno()+fls.get(i).getFname()+",";
		}
		System.out.println(a);
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(a);	
	}
	
}
