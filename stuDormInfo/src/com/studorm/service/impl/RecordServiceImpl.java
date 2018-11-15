package com.studorm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.studorm.entity.Record;
import com.studorm.entity.Student;
import com.studorm.mapper.RecordMapper;
import com.studorm.service.RecordService;

@Service
@Transactional
public class RecordServiceImpl implements RecordService{
	@Autowired RecordMapper recordMapper;

	@Override
	public Record findRecord(Record record) {
		// TODO Auto-generated method stub
		return recordMapper.findRecord(record);
	}

	@Override
	public List<Record> findRecordAll(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return recordMapper.findRecordAll(map);
	}

	@Override
	public int addRecord(Record record) {
		// TODO Auto-generated method stub
		return recordMapper.addRecord(record);
	}

	@Override
	public int deleteRecord(int id) {
		// TODO Auto-generated method stub
		return recordMapper.deleteRecord(id);
	}

	@Override
	public int updateRecord(Record record) {
		// TODO Auto-generated method stub
		return recordMapper.updateRecord(record);
	}
}
