package com.studorm.entity;

public class DormManager {
	private Integer dormManagerId;
	private String userName;
	private String password;
	private Integer dormBuildId;
	//根据实际需求添加的，查询时是无法直接从数据库拿出数据的,但是可以间接从其他表中拿取
	private String dormBuildName;
	private String name;
	private String sex;
	private String tel;
	
	
	public DormManager() {
	}
	
	public DormManager(String userName, String password) {
		this.userName = userName;
		this.password = password;
	}
	public DormManager(int dormManagerId, String password) {
		this.dormManagerId = dormManagerId;
		this.password = password;
	}
	

	public DormManager(String userName,String password, String name, String sex, String tel) {
		this.userName = userName;
		this.password=password;
		this.name = name;
		this.sex = sex;
		this.tel = tel;
	}
	
	

	public DormManager(Integer dormManagerId, String userName, Integer dormBuildId,
			String name, String sex, String tel) {
		this.dormManagerId = dormManagerId;
		this.userName = userName;
		this.password = password;
		this.dormBuildId = dormBuildId;
		this.dormBuildName = dormBuildName;
		this.name = name;
		this.sex = sex;
		this.tel = tel;
	}

	public int getDormManagerId() {
		return dormManagerId;
	}
	public void setDormManagerId(int dormManagerId) {
		this.dormManagerId = dormManagerId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getDormBuildId() {
		return dormBuildId;
	}
	public void setDormBuildId(int dormBuildId) {
		this.dormBuildId = dormBuildId;
	}
	public String getDormBuildName() {
		return dormBuildName;
	}
	public void setDormBuildName(String dormBuildName) {
		this.dormBuildName = dormBuildName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}

	@Override
	public String toString() {
		return "DormManager [dormManagerId=" + dormManagerId + ", userName=" + userName + ", password=" + password
				+ ", dormBuildId=" + dormBuildId + ", dormBuildName=" + dormBuildName + ", name=" + name + ", sex="
				+ sex + ", tel=" + tel + "]";
	}
	
	

}
