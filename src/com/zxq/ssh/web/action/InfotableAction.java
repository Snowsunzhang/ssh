package com.zxq.ssh.web.action;


import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.bcel.internal.generic.RETURN;
import com.zxq.ssh.domain.Infotable;
import com.zxq.ssh.service.IInfotableService;

public class InfotableAction  extends ActionSupport {
	private IInfotableService infotableService;
	private Infotable infotable;
	private List<Infotable> infotables;
	private String glcs;
	private String xsshyj;
	private String bmshyj;
	private String xkfl;
	private String jb;
	
	public String getJb() {
		return jb;
	}
	public void setJb(String jb) {
		this.jb = jb;
	}
	public String getXkfl() {
		return xkfl;
	}
	public void setXkfl(String xkfl) {
		this.xkfl = xkfl;
	}
	public String getBmshyj() {
		return bmshyj;
	}
	public void setBmshyj(String bmshyj) {
		this.bmshyj = bmshyj;
	}
	private Integer infono;
	private String jg;
	public String getJg() {
		return jg;
	}
	public void setJg(String jg) {
		this.jg = jg;
	}
	public Integer getInfono() {
		return infono;
	}
	public void setInfono(Integer infono) {
		this.infono = infono;
	}
	public String getGlcs() {
		return glcs;
	}
	public void setGlcs(String glcs) {
		this.glcs = glcs;
	}
	public String getXsshyj() {
		return xsshyj;
	}
	public void setXsshyj(String xsshyj) {
		this.xsshyj = xsshyj;
	}
	public IInfotableService getInfotableService() {
		return infotableService;
	}
	public void setInfotableService(IInfotableService infotableService) {
		this.infotableService = infotableService;
	}
	public Infotable getInfotable() {
		return infotable;
	}
	public void setInfotable(Infotable infotable) {
		this.infotable = infotable;
	}
	public List<Infotable> getInfotables() {
		return infotables;
	}
	public void setInfotables(List<Infotable> infotables) {
		this.infotables = infotables;
	}
	
	
	
	
//Action函数*********************************************************************
	
	
	//**********获得该用户的所有需求征集表**********
	@Override
	public String execute() throws Exception {
		
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		String n=(String)session.getAttribute("cname").toString();
		String hql="from Infotable where institutionName='"+n+"'";
		
		infotables= infotableService.select(hql);
		//System.out.println(infotables.size());
		return SUCCESS;
	}
	
	
	//**********添加需求**********
	public String save()throws Exception{
		//System.out.println(infotable.getAddress()+"   "+infotable.getCooperationUnit());
		infotable.setZt("未提交");
		infotableService.save(infotable);
		return "chenggong";
		
	}
	
	
	//**********修改时先获得旧信息**********
	public String xiugai()throws Exception{
		System.out.println("xuqiuhaoma:"+infono);
		infotable=infotableService.get(infono);
		//System.out.println(infotable.getAddress());
		return "xiugai";
	}
	
	
	//**********征集表详情**********
	public String xiangqing()throws Exception{
		
		HttpServletRequest request=ServletActionContext.getRequest();
		String a=request.getParameter("infono");
		String hql="from Infotable where infono="+a;
		infotable=infotableService.selectone(hql);
		return "xiangqing";
	}
	
	
	//**********提交征集表**********
	public String tijiao()throws Exception{
		System.out.println("jinruhanshu");
		HttpServletRequest request=ServletActionContext.getRequest();
		String a=request.getParameter("infono");
		String hql="from Infotable where infono="+a;
		infotable=infotableService.selectone(hql);
		infotable.setZt("已提交");
		infotable.setSh("形式审核未审核");
		infotableService.update(infotable);
		return execute();
	}
	
	
	//**********删除征集表**********
	public String shanchu()throws Exception{
		
		infotable=infotableService.get(infono);
		infotableService.delete(infotable);
		return execute();
	}
	
	
	//**********显示审核状态及结果**********
	public String jieguo()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		String n=(String)session.getAttribute("cname").toString();
		String hql="from Infotable where institutionName='"+n+"'and zt='已提交'";
		infotables= infotableService.select(hql);
		System.out.println(infotables.size());
		return "jieguo";
	}
	
	
	//**********获得需要形式审核的征集表**********
	public String xssh()throws Exception{
		String hql="from Infotable where sh='形式审核未审核'and zt='已提交'";
		infotables= infotableService.select(hql);
		System.out.println(infotables.size());
		return "xssh";
	}
	
	
	//**********部门审核显示征集表信息**********
	public String bmshxq()throws Exception{
		infotable=infotableService.get(infono);
		return "bmshxq";
	}
	
	
	//**********获得需要部门审核的征集表**********
	public String bmsh()throws Exception{
		System.out.println("进入部门审核");
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		String n=(String)session.getAttribute("cname").toString();
		String hql="from Infotable where sh='形式审核已通过'and bmsh='部门审核未审核'and glcs='"+n+"'";
		infotables= infotableService.select(hql);
		System.out.println(infotables.size());
		return "bmsh";
	}
	
	
	//**********形式审核显示征集表信息**********
	public String sh()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		String a=request.getParameter("infono");
		String hql="from Infotable where infono="+a;
		infotable=infotableService.selectone(hql);
		return "sh";
	}
	
	
	
	//**********提交形式审核**********
	public String tjxssh()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		String a=request.getParameter("infono");
		String hql="from Infotable where infono="+a;
		infotable=infotableService.selectone(hql);
		if(glcs.equals("请选择"))
		{
			infotable.setSh("形式审核未通过");
			infotable.setBmsh("部门审核未审核");
			infotable.setXsshyj(xsshyj);
		}
		else
		{
			infotable.setSh("形式审核已通过");
			infotable.setBmsh("部门审核未审核");
			infotable.setGlcs(glcs);
		}
		infotableService.update(infotable);
		return xssh();
	}
	
	
	
	
	//**********统计查询**********
	public void tongji()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpServletResponse response=ServletActionContext.getResponse();
		JSONArray jsonObjecta = (JSONArray) JSON.parse((request.getParameter("a")));
		JSONArray jsonObjectb = (JSONArray) JSON.parse((request.getParameter("b")));
		JSONArray jsonObjectc = (JSONArray) JSON.parse((request.getParameter("c")));
		String hqlString="from Infotable where zt='已提交'";
		for(int i=0;i<jsonObjecta.size();i++)
		{
			JSONObject a=(JSONObject)JSON.parse(jsonObjecta.get(i).toString());
			JSONObject b=(JSONObject)JSON.parse(jsonObjectb.get(i).toString());
			JSONObject c=(JSONObject)JSON.parse(jsonObjectc.get(i).toString());
			hqlString+=a.get("name");
			hqlString+=b.get("name");
			hqlString+="='";
			hqlString+=c.get("name");
			hqlString+="'";
		}
		infotables=infotableService.select(hqlString);
		String result = JSON.toJSONString(infotables);
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(result);
	}
	
	//**********树形检索**********
	public String xkfl()throws Exception{
		if(jb.equals("1"))
		{
			String hql="from Infotable where zt='已提交' and centralized3 like'"+xkfl.substring(0,3)+"%'";
			infotables=infotableService.select(hql);
			System.out.println(infotables.size());
		}
		if(jb.equals("2"))
		{
			String hql="from Infotable where zt='已提交' and centralized3 like'"+xkfl.substring(0,5)+"%'";
			infotables=infotableService.select(hql);
			System.out.println(infotables.size());
		}
		if(jb.equals("3"))
		{
			String hql="from Infotable where zt='已提交' and centralized3 like'"+xkfl.substring(0,7)+"%'";
			infotables=infotableService.select(hql);
			System.out.println(infotables.size());
		}
		return "xkfl";
	}
	
	
	//**********保存修改的征集表信息**********
	public String savechange()throws Exception{
		System.out.println(infono);
		Infotable infotable1=infotableService.get(infono);
		infotable1.setInstitutionName(infotable.getInstitutionName());
		infotable1.setCentralized(infotable.getCentralized());
		infotable1.setAddress(infotable.getAddress());
		infotable1.setSzdy(infotable.getSzdy());
		infotable1.setWebsite(infotable.getWebsite());
		infotable1.setEmail(infotable.getEmail());
		infotable1.setRepresent(infotable.getRepresent());
		infotable1.setPostalcode(infotable.getPostalcode());
		infotable1.setContactName(infotable.getContactName());
		infotable1.setFixedPhone(infotable.getFixedPhone());
		infotable1.setMobilePhone(infotable.getMobilePhone());
		infotable1.setFax(infotable.getFax());
		infotable1.setAttributes(infotable.getAttributes());
		infotable1.setIntroduction(infotable.getIntroduction());
		infotable1.setTechnology(infotable.getTechnology());
		infotable1.setTime1(infotable.getTime1());
		infotable1.setTime2(infotable.getTime2());
		infotable1.setSummary1(infotable.getSummary1());
		infotable1.setSummary2(infotable.getSummary2());
		infotable1.setSummary3(infotable.getSummary3());
		infotable1.setKeyword1(infotable.getKeyword1());
		infotable1.setKeyword2(infotable.getKeyword2());
		infotable1.setKeyword3(infotable.getKeyword3());
		infotable1.setKeyword4(infotable.getKeyword4());
		infotable1.setKeyword5(infotable.getKeyword5());
		infotable1.setNmoney(infotable.getNmoney());
		infotable1.setCooperation(infotable.getCooperation());
		infotable1.setCooperationUnit(infotable.getCooperationUnit());
		infotableService.update(infotable1);
		//return execute();
		return "savechange";
	}
	
	
	
	
	//**********提交部门审核**********
	public String tjbmsh()throws Exception{
		infotable=infotableService.get(infono);
		if(jg=="通过")
		{
			infotable.setBmsh("部门审核已通过");
			infotableService.update(infotable);
		}
		else {
			infotable.setBmsh("部门审核未通过");
			infotable.setBmshyj(bmshyj);
			infotableService.update(infotable);
		}
		return bmsh();
	}
}




























