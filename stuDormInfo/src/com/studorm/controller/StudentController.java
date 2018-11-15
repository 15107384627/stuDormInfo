package com.studorm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.studorm.entity.DormManager;
import com.studorm.entity.Student;
import com.studorm.service.StudentService;


@Controller
@RequestMapping(value="/student")
public class StudentController {
	@Autowired StudentService studentService;
	
	@RequestMapping(value="/info")
	public String studentInfo(Map<String,Object> map,String name,String userType){
		Map<String,Object> mapData = new HashMap<>();
		mapData.put("name", name);
		List<Student> student = studentService.findStudentAll(mapData);
		map.put("student", student);
		if("admin".equals(userType)){
			return "admin/studentInfo";
		}else{
			return "dormManager/studentInfo";
		}
	}
	@RequestMapping(value="/add")
	@ResponseBody
	public boolean studentAdd(Student student){
		System.out.println(student.toString());
		Student s = studentService.findStudent(student);
		if(s == null){
			int stu = studentService.addStudent(student);
			if(stu>0)
				return true;
		}
		return false;
	}
	@RequestMapping(value="/delete")
	@ResponseBody
	public String studentDelete(int id){
		int d = studentService.deleteStudent(id);
			if(d>0){
				return "true";
			}
		return "false";
	}
	@RequestMapping(value="/update")
	@ResponseBody
	public boolean studentUpdate(Student student){
		System.out.println(student.toString());
		int d = studentService.updateStudent(student);
		if(d>0){
				return true;
		}
		return false;
	}
	@RequestMapping(value="/updatePassword")
	@ResponseBody
	public boolean studentUpdatePassword(String  nPassword,Student student){
		int s = studentService.findStudentPassword(student);
		System.out.println(s);
		Student st = new Student(s,nPassword);
		if(s!=0){
			int stu = studentService.updateStudentPassword(st);
			if(stu>0){
				return true;
			}
		}
		return false;
	}
}
