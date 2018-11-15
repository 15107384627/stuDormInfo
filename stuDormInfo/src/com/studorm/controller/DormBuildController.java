package com.studorm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.studorm.entity.DormBuild;
import com.studorm.entity.Student;
import com.studorm.service.DormBuildService;

@Controller
@RequestMapping(value="/dormBuild")
public final class DormBuildController {
	@Autowired DormBuildService dormBuildService;
	
	@RequestMapping(value="/info")
	public String dormBuildInfo(Map<String,Object> map,String dormBuildName){
		Map<String,Object> mapData = new HashMap<>();
		mapData.put("dormBuildName", dormBuildName);
		List<DormBuild> dormBuild = dormBuildService.findDormBuildAll(mapData);
		map.put("dormBuild", dormBuild);
		return "admin/dormBuildInfo";
	}
	@RequestMapping(value="/add")
	@ResponseBody
	public boolean dormBuildAdd(DormBuild dormBuild){
		System.out.println(dormBuild.toString());
		DormBuild d = dormBuildService.findDormBuild(dormBuild);
		if(d == null){
			int db = dormBuildService.addDormBuild(dormBuild);
			if(db>0)
				return true;
		}
		return false;
	}
	@RequestMapping(value="/delete")
	@ResponseBody
	public String dormBuildDelete(int id){
		int d = dormBuildService.deleteDormBuild(id);
			if(d>0){
				return "true";
			}
		return "false";
	}
	@RequestMapping(value="/update")
	@ResponseBody
	public boolean dormBuildUpdate(DormBuild dormBuild){
		System.out.println(dormBuild.toString());
		int d = dormBuildService.updateDormBuild(dormBuild);
		if(d>0){
				return true;
		}
		return false;
	}
}
