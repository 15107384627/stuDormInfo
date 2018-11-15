package com.studorm.mapper;

import java.util.List;
import java.util.Map;

import com.studorm.entity.Record;

public interface RecordMapper {
	public Record findRecord(Record record);
	public List<Record> findRecordAll(Map<String,Object> map);
	public int addRecord(Record record);
	public int deleteRecord(int id);
	public int updateRecord(Record record);
}
