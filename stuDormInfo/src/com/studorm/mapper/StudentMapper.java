package com.studorm.mapper;

import java.util.List;
import java.util.Map;

import com.studorm.entity.Admin;
import com.studorm.entity.Student;

public interface StudentMapper {
	public Student findStudent(Student student);
	public List<Student> findStudentAll(Map<String,Object> map);
	public int addStudent(Student student);
	public int deleteStudent(int id);
	public int updateStudent(Student student);
	public int findStudentPassword(Student student);
	public int updateStudentPassword(Student student);
}
