package com.studorm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.studorm.entity.Admin;
import com.studorm.mapper.AdminMapper;
import com.studorm.service.AdminService;


@Service
@Transactional
public class AdminServiceImpl implements AdminService {
	@Autowired 
	AdminMapper adminMapper;
	public Admin findAdmin(Admin admin){
		return adminMapper.findAdmin(admin);
	}
	
	@Override
	public Integer findAdminPassword(Admin admin) {
		// TODO Auto-generated method stub
		return adminMapper.findAdminPassword(admin);
	}

	@Override
	public int updateAdminPassword(Admin admin) {
		// TODO Auto-generated method stub
		return adminMapper.updateAdminPassword(admin);
	}
}
