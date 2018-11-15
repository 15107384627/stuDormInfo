package com.studorm.entity;

public class Student {
	private int studentId;
	private String stuNum;
	//userName相当于用户名，我们把学号作为用户名登录
	private String userName;
	private String password;
	private String name;
	private int dormBuildId;
	//手动添加的
	private String dormBuildName;
	private String dormName;
	private String sex;
	private String tel;
	
	
	public Student() {
	}
	
	public Student(int studentId, String password) {
		this.studentId = studentId;
		this.password = password;
	}
	
	
	public Student(String userName, String password) {
		this. stuNum=userName;
		this.userName = userName;
		this.password = password;
	}
	



	public Student(String stuNum, String password, String name, int dormBuidId, String dormName, String sex,
			String tel) {
		this.stuNum = stuNum;
		this.userName = stuNum;
		this.password = password;
		this.dormBuildId = dormBuidId;
		this.dormName = dormName;
		this.name = name;
		this.sex = sex;
		this.tel = tel;
	}




	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getStuNum() {
		return stuNum;
	}
	public void setSuNum(String stuNum) {
		this.stuNum = stuNum;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getDormName() {
		return dormName;
	}
	public void setDormName(String dormName) {
		this.dormName = dormName;
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

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}




	@Override
	public String toString() {
		return "Student [studentId=" + studentId + ", stuNum=" + stuNum + ", userName=" + userName
				+ ", password=" + password + ", name=" + name + ", dormBuildId=" + dormBuildId + ", dormBuildName="
				+ dormBuildName + ", dormName=" + dormName + ", sex=" + sex + ", tel=" + tel + "]";
	}
	
	

}
