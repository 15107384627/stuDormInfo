package com.studorm.service;

import java.util.List;
import java.util.Map;

import com.studorm.entity.Admin;

public interface AdminService {
	public Admin findAdmin(Admin admin);
	public Integer findAdminPassword(Admin admin);
	public int updateAdminPassword(Admin admin);
}
