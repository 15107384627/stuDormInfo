package com.studorm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.studorm.entity.DormManager;
import com.studorm.service.DormManagerService;

@Controller
@RequestMapping(value="/dormManager")
public class DormManagerController {
	@Autowired DormManagerService dormManagerService;
	
	@RequestMapping(value="/info")
	public String dormManagerInfo(Map<String,Object> map,String name,Integer page){
		int fristPage = 0;
		if(page!=null&&page!=0){
			fristPage = (page-1)*2;
		}else{
			page=1;
		}
		Map<String,Object> mapData = new HashMap<>();
		mapData.put("fristPage", fristPage);
		mapData.put("rows", 2);
		mapData.put("name", name);
		List<DormManager> dormManager = dormManagerService.findDormManagerAll(mapData);
		map.put("dormManager", dormManager);
		map.put("page",page);
		int pageNum = dormManagerService.getDormManagerNum(null);
		System.out.println(pageNum);
		map.put("pageNum",pageNum%2==0?pageNum/2:pageNum/2+1);
		return "admin/dormManagerInfo";
	}
	@RequestMapping(value="/add")
	@ResponseBody
	public boolean dormManagerAdd(DormManager dormManager){
		System.out.println(dormManager.toString());
		DormManager d = dormManagerService.findDormManager(dormManager);
		
		if(d == null){
			int dm = dormManagerService.addDormManager(dormManager);
			if(dm>0)
				return true;
		}
		return false;
	}
	@RequestMapping(value="/delete")
	@ResponseBody
	public String dormManagerDelete(int id){
		int d = dormManagerService.deleteDormManager(id);
			if(d>0){
				return "true";
			}
		return "false";
	}
	@RequestMapping(value="/update")
	@ResponseBody
	public boolean dormManagerUpdate(DormManager dormManager){
		System.out.println(dormManager.toString());
		int d = dormManagerService.updateDormManager(dormManager);
		if(d>0){
				return true;
		}
		return false;
	}
	@RequestMapping(value="/updatePassword")
	@ResponseBody
	public boolean dormManagerUpdatePassword(String  nPassword,DormManager dormManager){
		int d = dormManagerService.findDormManagerPassword(dormManager);
		System.out.println(d);
		DormManager dmr = new DormManager(d,nPassword);
		if(d!=0){
			int dm = dormManagerService.updateDormManagerPassword(dmr);
			if(dm>0){
				return true;
			}
		}
		return false;
	}
}
