package com.studorm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.studorm.entity.Admin;
import com.studorm.service.AdminService;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	@Autowired AdminService adminService;
	
	@RequestMapping(value="/updatePassword")
	@ResponseBody
	public boolean adminUpdatePassword(String  nPassword,Admin admin){
		Integer a = adminService.findAdminPassword(admin);
		System.out.println(a+"iiiiiiiiiiiiiiiiiiii");
		if(a!=null){
			Admin adm = new Admin(a,nPassword);
			int ad = adminService.updateAdminPassword(adm);
			if(ad>0){
				return true;
			}
		}
		return false;
	}
}
