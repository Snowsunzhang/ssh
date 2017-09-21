package com.zxq.ssh.web.action;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.components.ActionComponent;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.inject.Context;
import com.zxq.ssh.domain.Qx;
import com.zxq.ssh.domain.Role;
import com.zxq.ssh.service.IQxService;
import com.zxq.ssh.service.IRoleService;
import com.zxq.ssh.service.Impl.RoleServiceImpl;

public class RoleAction extends ActionSupport {
	private IRoleService roleService;
	private IQxService qxService;
	private Role role;
	private List<Role> roles;
	private List<Qx> qxs;
	private Integer[] ids;
	private Integer id;
	
	
	public Integer[] getIds() {
		return ids;
	}

	public void setIds(Integer[] ids) {
		this.ids = ids;
	}

	public List<Qx> getQxs() {
		return qxs;
	}

	public void setQxs(List<Qx> qxs) {
		this.qxs = qxs;
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

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public String getall() throws Exception {
	
		roles = roleService.getAll();
		return SUCCESS;
	}

	public String more() throws Exception {
		role = roleService.get(id);
		Set<Qx> qxs = role.getQxs();
		ids = new Integer[qxs.size()];
		int i = 0;
		for (Qx qx : qxs) {
			ids[i++] = qx.getId();
		}
		ActionContext.getContext().put("allqxs", qxService.getAll());
		return "more";
	}
	public String  getallqx()throws Exception{
		ActionContext.getContext().put("allqxs", qxService.getAll());
		return "getallqx";
	}
	
	public void setQxService(IQxService qxService) {
		this.qxService = qxService;
	}

	public String save() throws Exception {
		role = roleService.get(id);
		role.getQxs().clear();
		for (Integer id : ids) {
			System.out.println(id);
			role.getQxs().add(new Qx(id));
		}
		roleService.update(role);
		return getall();
	}
	public String add()throws Exception{
		roleService.save(role);
		for (Integer id : ids) {
			System.out.println(id);
			role.getQxs().add(new Qx(id));
		}
		roleService.update(role);
		return getall();
	}
	
	public String delete()throws Exception{
		System.out.println(id);
		role = roleService.get(id);
		role.getQxs().clear();
		roleService.delete(role);
		
		return getall();
	}
	
}
