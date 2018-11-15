package com.studorm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.studorm.entity.Record;
import com.studorm.entity.Student;
import com.studorm.service.RecordService;

@Controller
@RequestMapping(value="/record")
public class RecordController {
	@Autowired RecordService recordService;
	
	@RequestMapping(value="/info")
	public String recordInfo(Map<String,Object> map,String studentName,String userType){
		Map<String,Object> mapData = new HashMap<>();
		mapData.put("studentName", studentName);
		List<Record> record = recordService.findRecordAll(mapData);
		map.put("record", record);
		if("admin".equals(userType)){
			return "admin/recordInfo";
		}else if("dormManager".equals(userType)){
			return "dormManager/recordInfo";
		}else 
			return "student/recordInfo";
	}
	@RequestMapping(value="/add")
	@ResponseBody
	public boolean recordAdd(Record record){
		/*System.out.println(record.toString());
		Record r = recordService.findRecord(record);
		if(r == null){*/
			int re = recordService.addRecord(record);
			if(re>0)
				return true;
		/*}*/
		return false;
	}
	@RequestMapping(value="/delete")
	@ResponseBody
	public String recordDelete(int id){
		int r = recordService.deleteRecord(id);
			if(r>0){
				return "true";
			}
		return "false";
	}
	@RequestMapping(value="/update")
	@ResponseBody
	public boolean recordUpdate(Record record){
		System.out.println(record.toString());
		int d = recordService.updateRecord(record);
		if(d>0){
				return true;
		}
		return false;
	}
}
