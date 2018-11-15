package com.studorm.service;

import java.util.List;
import java.util.Map;

import com.studorm.entity.Record;

public interface RecordService {
	public Record findRecord(Record record);
	public List<Record> findRecordAll(Map<String,Object> map);
	public int addRecord(Record record);
	public int deleteRecord(int id);
	public int updateRecord(Record record);
}
