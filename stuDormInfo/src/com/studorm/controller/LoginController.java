package com.studorm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	@RequestMapping(value="/login")
	public String userLogin(HttpServletRequest request){
		request.getSession().removeAttribute("userName");
		request.getSession().removeAttribute("userType");
		return "login";
	}
}
