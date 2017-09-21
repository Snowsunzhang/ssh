package com.zxq.ssh.web.action;

import java.io.PrintWriter;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONSerializer;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zxq.ssh.domain.Qx;
import com.zxq.ssh.domain.Role;
import com.zxq.ssh.domain.Usertable;
import com.zxq.ssh.service.IQxService;
import com.zxq.ssh.service.IRoleService;
import com.zxq.ssh.service.IUsertableService;

public class UsertableAction extends ActionSupport {
	private IUsertableService usertableService;
	private IQxService qxService;
	private Usertable usertable;
	private String name; 
	private String usermame;
	private String rand;
	private List<Usertable> usertables;
	private IRoleService roleService;
	private Integer ids[];
	private Integer id;
	private String oldpwd;
	private String newpwd;
	
	public String getOldpwd() {
		return oldpwd;
	}
	public void setOldpwd(String oldpwd) {
		this.oldpwd = oldpwd;
	}
	public String getNewpwd() {
		return newpwd;
	}
	public void setNewpwd(String newpwd) {
		this.newpwd = newpwd;
	}
	public String getRand() {
		return rand;
	}
	public void setRand(String rand) {
		this.rand = rand;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public IRoleService getRoleService() {
		return roleService;
	}
	public void setRoleService(IRoleService roleService) {
		this.roleService = roleService;
	}
	
	public Integer[] getIds() {
		return ids;
	}
	public void setIds(Integer[] ids) {
		this.ids = ids;
	}
	public IQxService getQxService() {
		return qxService;
	}
	public List<Usertable> getUsertables() {
		return usertables;
	}
	public void setUsertables(List<Usertable> usertables) {
		this.usertables = usertables;
	}

	private String pwd1;
	public void setUsertableService(IUsertableService usertableService) {
		this.usertableService = usertableService;
	}
	public void setQxService(IQxService qxService) {
		this.qxService = qxService;
	}
	public void setUsertable(Usertable usertable) {
		this.usertable = usertable;
	}
	public Usertable getUsertable() {
		return usertable;
	}
	public String getUsermame() {
		return usermame;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public IUsertableService getUsertableService() {
		return usertableService;
	}
	public void setUsermame(String usermame) {
		this.usermame = usermame;
	}
	public String getPwd1() {
		return pwd1;
	}
	public void setPwd1(String pwd1) {
		this.pwd1 = pwd1;
	}
	
	public String getall()throws Exception{
		usertables=usertableService.getAll();
		return "getall";
		
	}
	
	
//Action函数*********************************************************************
	
	//**********登录**********
	public String login () throws  Exception{
		HttpServletRequest request1=ServletActionContext.getRequest();
		String sessionCode =(String)request1.getSession().getAttribute("rand");
		if(!sessionCode.equals(rand))
		{
			return ERROR;
		}
		System.out.println(usermame+"  "+pwd1);
		usertable=usertableService.get(usermame);
		if(usertable!=null)
		{
			if(pwd1.equals(usertable.getPwd1()))
			{
				HttpServletRequest request=ServletActionContext.getRequest();
				request.getSession().setAttribute("cname", usertable.getCname());
				request.getSession().setAttribute("name", usertable.getUsermame());
				System.out.println(usertable.getJs());
				return "login";
			}
			else 
				return ERROR;
			}
	else
		return ERROR;
}
	
	
	
	//**********注册用户**********		
	public String save()throws Exception{
		
		System.out.println(usertable.getUsermame()+"  "+usertable.getGsid()+"  "+usertable.getCname()+"  "+usertable.getCadress()+"  "+usertable.getSzdy()+"  "+usertable.getEmail()+"  "+usertable.getClegalpersonv()+"  "+usertable.getYb()+"   "+usertable.getIntroduction()+"  "+usertable.getPwd1()+"  ");
	//	usertable.setJs("yh");
		usertable.getRoles().add(new Role(8));
		usertableService.save(usertable);
		return SUCCESS;
}
	
	
	
	//**********验证输入的用户名是否可用**********
	public void textajax()throws Exception{
		
		System.out.println("1");
		HttpServletRequest request=ServletActionContext.getRequest();
		String n=request.getParameter("s");
		usertable=usertableService.get(n);
		String a;
		if (usertable==null)
		{
			a="用户名可以使用！";
		}
		else {
			a="用户名已存在！";
		}
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(a);		
}
	
	
	
	//**********？？？？**********
	public void tishi()throws Exception
	{
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		String n=(String)session.getAttribute("name").toString();
		usertable=usertableService.get(n);
		String a=usertable.getCname()+","+usertable.getCadress()+","+usertable.getSzdy()+","+usertable.getEmail()+","+usertable.getClegalpersonv()+","+usertable.getYb()+","+usertable.getIntroduction();
		System.out.println(a);
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(a);	
	}
	
	//**********menu菜单**********
	public String menu() throws Exception {
		HttpServletResponse response = ServletActionContext.getResponse();
		String loginname = (String) ServletActionContext.getRequest().getSession().getAttribute("name");
		response.setContentType("text/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		List<Qx> list = qxService.findByLoginUserId(loginname);
		for (Qx qx : list) {
			System.out.println("权限q:"+qx);
		}
		//String json = JSONSerializer.toJSON(list).toString();
		//out.print(json);
		String a="";
		for(int i=0;i<list.size();i++)
		{
			a=a+list.get(i).getName()+",";
		}
		HttpServletResponse response1=ServletActionContext.getResponse();
		response1.setCharacterEncoding("UTF-8");
		System.out.println(a);
		response1.getWriter().print(a);
		return null;
	}
		
	
	
	//**********显示用户拥有的角色**********	
	public String more()throws Exception{
		usertable=usertableService.get(usermame);
		Set<Role> roles=usertable.getRoles();
		ids=new Integer[roles.size()];
		int i=0;
		for(Role role:roles){
			ids[i++]=role.getId();
		}
		ActionContext.getContext().put("allroles", roleService.getAll());
		return "more";
	}
	
	
	//**********保存用户角色**********
	public String savejs()throws Exception{
		System.out.println("进入函数");
		System.out.println(usermame);
		usertable=usertableService.get(usermame);
		
		usertable.getRoles().clear();
		for(Integer id:ids)
		{
			System.out.println(id);
			usertable.getRoles().add(new Role(id));
		}
		usertableService.update(usertable);
		return getall();
	}
	
	
	
	//**********显示系统中的所有角色**********
	public String getallroles()throws Exception{
		ActionContext.getContext().put("allroles", roleService.getAll());
		return "getallroles";
	}
	
	
	//**********添加用户**********
	public String add() throws Exception{
		
		usertableService.save(usertable);
		System.out.println("数组长度:"+ids.length);
		for(Integer id : ids){
			System.out.println("id:"+id);
			usertable.getRoles().add(new Role(id));
		}
		usertableService.update(usertable);
		return getall();
	}
	
	
	//**********删除用户**********
	public String delete()throws Exception{
		usertable=usertableService.get(usermame);
		usertable.getRoles().clear();
		usertableService.delete(usermame);
		
		return getall();
	}
	
	
	//**********获得用户信息**********
	public String info()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		String n=(String)session.getAttribute("name").toString();
		usertable=usertableService.get(n);
		return "info";
	}
	
	
	//**********修改时获得用户的原信息**********
	public String xiugai()throws Exception{
		usertable=usertableService.get(usermame);
		return "xiugai";
	}
	
	
	//**********保存用户的新信息**********
	public String savexiugai()throws Exception{
		System.out.println(usertable.getUsermame()+","+usertable.getGsid()+","+usertable.getGsid()+","+usertable.getCname()+","+usertable.getCadress());
		Usertable usertable1=usertableService.get(usermame);
		usertable1.setUsermame(usertable.getUsermame());
		usertable1.setGsid(usertable.getGsid());
		usertable1.setCname(usertable.getCname());
		usertable1.setCadress(usertable.getCadress());
		usertable1.setSzdy(usertable.getSzdy());
		usertable1.setEmail(usertable.getEmail());
		usertable1.setClegalpersonv(usertable.getClegalpersonv());
		usertable1.setYb(usertable.getYb());
		usertable1.setIntroduction(usertable.getIntroduction());
		usertableService.update(usertable1);
		return info();
	}
	
	
	//**********修改密码**********
	public String xgmm()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		String n=(String)session.getAttribute("name").toString();
		usertable=usertableService.get(n);
		if(usertable.getPwd1().equals(oldpwd))
		{
			usertable.setPwd1(newpwd);
			usertableService.update(usertable);
			return "xgmm";
		}
		else {
			return "wrong";
		}
		
	}
}
	























