package com.hp.entity;

public class T_detail {
	private int bId;
	private String bdName;
	private String bdPerson;

	public int getbId() {
		return bId;
	}
	public void setbId(int bId) {
		this.bId = bId;
	}
	public String getBdName() {
		return bdName;
	}
	public void setBdName(String bdName) {
		this.bdName = bdName;
	}
	public String getBdPerson() {
		return bdPerson;
	}
	public void setBdPerson(String bdPerson) {
		this.bdPerson = bdPerson;
	}
	public T_detail(int bId, String bdName, String bdPerson) {
		super();
		this.bId = bId;
		this.bdName = bdName;
		this.bdPerson = bdPerson;
	}
	public T_detail() {
		super();
		// TODO 自动生成的构造函数存根
	}
	@Override
	public String toString() {
		return "T_detail [ bId=" + bId + ", bdName=" + bdName
				+ ", bdPerson=" + bdPerson + "]";
	}
	
	
}
