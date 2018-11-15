package com.studorm.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.studorm.entity.Admin;
import com.studorm.entity.DormManager;
import com.studorm.entity.Student;
import com.studorm.entity.Type;
import com.studorm.service.AdminService;
import com.studorm.service.DormManagerService;
import com.studorm.service.StudentService;


@Controller
@RequestMapping(value="/user")
public class UserLoginController {
	@Autowired AdminService adminService;
	@Autowired DormManagerService dormManagerService;
	@Autowired StudentService studentService;
	
	@RequestMapping(value="/login")
	@ResponseBody
	public String adminLogin(HttpServletRequest request, String userName, String password, String userType) {
		if (userType.equals("admin")) {
			Admin admin = new Admin(userName, password);
			Admin a = adminService.findAdmin(admin);
			if (a != null) {
				request.getSession().setAttribute("userName", userName);
				request.getSession().setAttribute("userType", userType);
				return "true1";
			}
		} else if (userType.equals("dormManager")) {
			DormManager dormManager = new DormManager(userName, password);
			DormManager d = dormManagerService.findDormManager(dormManager);
			if (d != null) {
				request.getSession().setAttribute("userName", userName);
				request.getSession().setAttribute("userType", userType);
				return "true2";
			}
		} else if (userType.equals("student")) {
			Student student = new Student(userName, password);
			Student s = studentService.findStudent(student);
			System.out.println(s.getStuNum());
			if (s != null) {
				request.getSession().setAttribute("userName", userName);
				request.getSession().setAttribute("userType", userType);
				return "true3";
			}
		} else {
			return "false";
		}
		return "false1";
	}
	@RequestMapping(value="/mainAdmin")
	public String mainAdmin(){
		return "mainAdmin";
	}
	@RequestMapping(value="/mainManager")
	public String mainManager(){
		return "mainManager";
	}
	@RequestMapping(value="/mainStudent")
	public String mainStudent(){
		return "mainStudent";
	}
}
