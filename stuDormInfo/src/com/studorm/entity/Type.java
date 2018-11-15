package com.studorm.entity;

public class Type {
	private String userType;
	
	public Type(){
		
	}
	
	public Type(String userType) {
		this.userType = userType;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}
	
}
