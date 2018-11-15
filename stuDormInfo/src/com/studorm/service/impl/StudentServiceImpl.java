package com.studorm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.studorm.entity.Student;
import com.studorm.mapper.StudentMapper;
import com.studorm.service.StudentService;

@Service
@Transactional
public class StudentServiceImpl implements StudentService {
	@Autowired StudentMapper studentMapper;

	public Student findStudent(Student student) {
		return studentMapper.findStudent(student);
	}

	public List<Student> findStudentAll(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return studentMapper.findStudentAll(map);
	}

	public int addStudent(Student student) {
		// TODO Auto-generated method stub
		return studentMapper.addStudent(student);
	}

	public int deleteStudent(int id) {
		// TODO Auto-generated method stub
		return studentMapper.deleteStudent(id);
	}

	public int updateStudent(Student student) {
		// TODO Auto-generated method stub
		return studentMapper.updateStudent(student);
	}

	@Override
	public int findStudentPassword(Student student) {
		// TODO Auto-generated method stub
		return studentMapper.findStudentPassword(student);
	}

	@Override
	public int updateStudentPassword(Student student) {
		// TODO Auto-generated method stub
		return studentMapper.updateStudentPassword(student);
	}

}
