package com.zxq.ssh.domain;

/**
 * Infotable entity. @author MyEclipse Persistence Tools
 */

public class Infotable implements java.io.Serializable {

	// Fields

	private Integer infono;
	private String institutionName;
	private String centralized;
	private String address;
	private String szdy;
	private String website;
	private String email;
	private String represent;
	private String postalcode;
	private String contactName;
	private String fixedPhone;
	private String mobilePhone;
	private String fax;
	private String attributes;
	private String introduction;
	private String technology;
	private String time1;
	private String time2;
	private String summary1;
	private String summary2;
	private String summary3;
	private String keyword1;
	private String keyword2;
	private String keyword3;
	private String keyword4;
	private String keyword5;
	private String nmoney;
	private String cooperation;
	private String cooperationUnit;
	
	
	
	private String researchType;
	private String centralized3;
	private String filed;
	private String industry3;
	private String zt;
	private String sh;
	private String bmsh;
	private String xsshyj;
	private String bmshyj;
	private String glcs;

	// Constructors

	/** default constructor */
	public Infotable() {
	}

	/** minimal constructor */
	public Infotable(Integer infono, String institutionName,
			String centralized, String address, String szdy, String website,
			String email, String represent, String postalcode, String technology) {
		this.infono = infono;
		this.institutionName = institutionName;
		this.centralized = centralized;
		this.address = address;
		this.szdy = szdy;
		this.website = website;
		this.email = email;
		this.represent = represent;
		this.postalcode = postalcode;
		this.technology = technology;
	}

	/** full constructor */
	public Infotable(Integer infono, String institutionName,
			String centralized, String address, String szdy, String website,
			String email, String represent, String postalcode,
			String contactName, String fixedPhone, String mobilePhone,
			String fax, String attributes, String introduction,
			String technology, String time1, String time2, String summary1,
			String summary2, String summary3, String keyword1, String keyword2,
			String keyword3, String keyword4, String keyword5, String nmoney,
			String cooperation, String cooperationUnit, String researchType,
			String centralized3, String filed, String industry3, String zt,
			String sh, String bmsh, String xsshyj, String bmshyj, String glcs) {
		this.infono = infono;
		this.institutionName = institutionName;
		this.centralized = centralized;
		this.address = address;
		this.szdy = szdy;
		this.website = website;
		this.email = email;
		this.represent = represent;
		this.postalcode = postalcode;
		this.contactName = contactName;
		this.fixedPhone = fixedPhone;
		this.mobilePhone = mobilePhone;
		this.fax = fax;
		this.attributes = attributes;
		this.introduction = introduction;
		this.technology = technology;
		this.time1 = time1;
		this.time2 = time2;
		this.summary1 = summary1;
		this.summary2 = summary2;
		this.summary3 = summary3;
		this.keyword1 = keyword1;
		this.keyword2 = keyword2;
		this.keyword3 = keyword3;
		this.keyword4 = keyword4;
		this.keyword5 = keyword5;
		this.nmoney = nmoney;
		this.cooperation = cooperation;
		this.cooperationUnit = cooperationUnit;
		this.researchType = researchType;
		this.centralized3 = centralized3;
		this.filed = filed;
		this.industry3 = industry3;
		this.zt = zt;
		this.sh = sh;
		this.bmsh = bmsh;
		this.xsshyj = xsshyj;
		this.bmshyj = bmshyj;
		this.glcs = glcs;
	}

	// Property accessors

	public Integer getInfono() {
		return this.infono;
	}

	public void setInfono(Integer infono) {
		this.infono = infono;
	}

	public String getInstitutionName() {
		return this.institutionName;
	}

	public void setInstitutionName(String institutionName) {
		this.institutionName = institutionName;
	}

	public String getCentralized() {
		return this.centralized;
	}

	public void setCentralized(String centralized) {
		this.centralized = centralized;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSzdy() {
		return this.szdy;
	}

	public void setSzdy(String szdy) {
		this.szdy = szdy;
	}

	public String getWebsite() {
		return this.website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRepresent() {
		return this.represent;
	}

	public void setRepresent(String represent) {
		this.represent = represent;
	}

	public String getPostalcode() {
		return this.postalcode;
	}

	public void setPostalcode(String postalcode) {
		this.postalcode = postalcode;
	}

	public String getContactName() {
		return this.contactName;
	}

	public void setContactName(String contactName) {
		this.contactName = contactName;
	}

	public String getFixedPhone() {
		return this.fixedPhone;
	}

	public void setFixedPhone(String fixedPhone) {
		this.fixedPhone = fixedPhone;
	}

	public String getMobilePhone() {
		return this.mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getAttributes() {
		return this.attributes;
	}

	public void setAttributes(String attributes) {
		this.attributes = attributes;
	}

	public String getIntroduction() {
		return this.introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getTechnology() {
		return this.technology;
	}

	public void setTechnology(String technology) {
		this.technology = technology;
	}

	public String getTime1() {
		return this.time1;
	}

	public void setTime1(String time1) {
		this.time1 = time1;
	}

	public String getTime2() {
		return this.time2;
	}

	public void setTime2(String time2) {
		this.time2 = time2;
	}

	public String getSummary1() {
		return this.summary1;
	}

	public void setSummary1(String summary1) {
		this.summary1 = summary1;
	}

	public String getSummary2() {
		return this.summary2;
	}

	public void setSummary2(String summary2) {
		this.summary2 = summary2;
	}

	public String getSummary3() {
		return this.summary3;
	}

	public void setSummary3(String summary3) {
		this.summary3 = summary3;
	}

	public String getKeyword1() {
		return this.keyword1;
	}

	public void setKeyword1(String keyword1) {
		this.keyword1 = keyword1;
	}

	public String getKeyword2() {
		return this.keyword2;
	}

	public void setKeyword2(String keyword2) {
		this.keyword2 = keyword2;
	}

	public String getKeyword3() {
		return this.keyword3;
	}

	public void setKeyword3(String keyword3) {
		this.keyword3 = keyword3;
	}

	public String getKeyword4() {
		return this.keyword4;
	}

	public void setKeyword4(String keyword4) {
		this.keyword4 = keyword4;
	}

	public String getKeyword5() {
		return this.keyword5;
	}

	public void setKeyword5(String keyword5) {
		this.keyword5 = keyword5;
	}

	public String getNmoney() {
		return this.nmoney;
	}

	public void setNmoney(String nmoney) {
		this.nmoney = nmoney;
	}

	public String getCooperation() {
		return this.cooperation;
	}

	public void setCooperation(String cooperation) {
		this.cooperation = cooperation;
	}

	public String getCooperationUnit() {
		return this.cooperationUnit;
	}

	public void setCooperationUnit(String cooperationUnit) {
		this.cooperationUnit = cooperationUnit;
	}

	public String getResearchType() {
		return this.researchType;
	}

	public void setResearchType(String researchType) {
		this.researchType = researchType;
	}

	public String getCentralized3() {
		return this.centralized3;
	}

	public void setCentralized3(String centralized3) {
		this.centralized3 = centralized3;
	}

	public String getFiled() {
		return this.filed;
	}

	public void setFiled(String filed) {
		this.filed = filed;
	}

	public String getIndustry3() {
		return this.industry3;
	}

	public void setIndustry3(String industry3) {
		this.industry3 = industry3;
	}

	public String getZt() {
		return this.zt;
	}

	public void setZt(String zt) {
		this.zt = zt;
	}

	public String getSh() {
		return this.sh;
	}

	public void setSh(String sh) {
		this.sh = sh;
	}

	public String getBmsh() {
		return this.bmsh;
	}

	public void setBmsh(String bmsh) {
		this.bmsh = bmsh;
	}

	public String getXsshyj() {
		return this.xsshyj;
	}

	public void setXsshyj(String xsshyj) {
		this.xsshyj = xsshyj;
	}

	public String getBmshyj() {
		return this.bmshyj;
	}

	public void setBmshyj(String bmshyj) {
		this.bmshyj = bmshyj;
	}

	public String getGlcs() {
		return this.glcs;
	}

	public void setGlcs(String glcs) {
		this.glcs = glcs;
	}

}