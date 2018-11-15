package com.studorm.mapper;

import java.util.List;
import java.util.Map;

import com.studorm.entity.Admin;
import com.studorm.entity.DormBuild;

public interface AdminMapper {
	public Admin findAdmin(Admin admin);
	public Integer findAdminPassword(Admin admin);
	public int updateAdminPassword(Admin admin);
}
