package com.studorm.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.studorm.entity.DormManager;

@Controller
public class JumpController {
	@RequestMapping(value="/adminDormManagerInfo")
	public String jumpAdminDormManagerInfo(){
		return "admin/dormManagerInfo";
	}
	@RequestMapping(value="/adminStudentInfo")
	public String jumpAdminStudentInfo(){
		return "admin/studentInfo";
	}
	@RequestMapping(value="/adminDormBuildInfo")
	public String jumpAdminDormBuildInfo(){
		return "admin/dormBuildInfo";
	}
	@RequestMapping(value="/adminRecordInfo")
	public String jumpAdminRecordInfo(){
		return "admin/recordInfo";
	}
	@RequestMapping(value="/adminPasswordChange")
	public String jumpAdminPasswordChange(){
		return "admin/passwordChange";
	}
	@RequestMapping(value="/dormManageRecordSaveInfo")
	public String jumpDormManageRecordSaveInfo(){
		return "dormManager/recordSaveInfo";
	}
	@RequestMapping(value="/dormManagePasswordChange")
	public String jumpDormManagePasswordChangeInfo(){
		return "dormManager/passwordChange";
	}
	@RequestMapping(value="/dormManageStudentInfo")
	public String jumpDormManageStudentInfo(){
		return "dormManager/studentInfo";
	}
	@RequestMapping(value="/studentRecordInfo")
	public String jumpStudentRecordInfo(){
		return "student/recordInfo";
	}
	@RequestMapping(value="/studentPasswordChange")
	public String jumpStudentPasswordChangeInfo(){
		return "student/passwordChange";
	}
	@RequestMapping(value="/top")
	public String jumpTop(){
		return "top";
	}
	@RequestMapping(value="/adminLeft")
	public String jumpAdminLeft(){
		return "admin/left";
	}
	@RequestMapping(value="/adminBlank")
	public String jumpAdminBlank(){
		return "admin/blank";
	}
	@RequestMapping(value="/dormManagerLeft")
	public String jumpDormManagerLeft(){
		return "dormManager/left";
	}
	@RequestMapping(value="/dormManagerBlank")
	public String jumpDormManagerBlank(){
		return "dormManager/blank";
	}
	@RequestMapping(value="/studentLeft")
	public String jumpStudentLeft(){
		return "student/left";
	}
	@RequestMapping(value="/studentBlank")
	public String jumpStudentBlank(){
		return "student/blank";
	}
	@RequestMapping(value="/adminDormManagerAdd")
	public String jumpAdminDormManagerAdd(){
		return "admin/dormManagerAdd";
	}
	@RequestMapping(value="/adminDormManagerUpdate")
	public String update(Map<String, Object> map,int dormManId,String userName,int dormBuildId,String name,String sex,String tel){
		map.put("userName", userName);
		map.put("dormBuildId", dormBuildId);
		map.put("name", name);
		map.put("sex", sex);
		map.put("tel", tel);
		map.put("dormManId", dormManId);
		return "admin/dormManagerUpdate";
	}
	@RequestMapping(value="/adminStudentAdd")
	public String jumpAdminStudentAdd(){
		return "admin/studentAdd";
	}
	@RequestMapping(value="/adminStudentUpdate")
	public String update(Map<String, Object> map,int studentId,String stuNum,String name,int dormBuildId,String dormName,String sex,String tel){
		map.put("name", name);
		map.put("dormBuildId", dormBuildId);
		map.put("dormName", dormName);
		map.put("sex", sex);
		map.put("tel", tel);
		map.put("studentId", studentId);
		map.put("stuNum", stuNum);
		return "admin/studentUpdate";
	}
	@RequestMapping(value="/adminDormBuildAdd")
	public String jumpAdminDormBuildAdd(){
		return "admin/dormBuildAdd";
	}
	@RequestMapping(value="/adminDormBuildUpdate")
	public String update(Map<String, Object> map,int dormBuildId,String dormBuildName,String dormBuildDetail){
		map.put("dormBuildId", dormBuildId);
		map.put("dormBuildName", dormBuildName);
		map.put("dormBuildDetail", dormBuildDetail);
		return "admin/dormBuildUpdate";
	}
	@RequestMapping(value="/adminRecordAdd")
	public String jumpAdminRecordAdd(){
		return "admin/recordAdd";
	}
	@RequestMapping(value="/adminRecordUpdate")
	public String update(Map<String, Object> map,int recordId,String date,String studentNumber,String studentName,int dormBuildId,String dormName,String detail){
		map.put("date", date);
		map.put("dormBuildId", dormBuildId);
		map.put("dormName", dormName);
		map.put("studentNumber", studentNumber);
		map.put("detail", detail);
		map.put("recordId", recordId);
		map.put("studentName", studentName);
		return "admin/recordUpdate";
	}
}
