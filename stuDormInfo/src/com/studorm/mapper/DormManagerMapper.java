package com.studorm.mapper;

import java.util.List;
import java.util.Map;

import com.studorm.entity.DormManager;
import com.studorm.entity.Page;

public interface DormManagerMapper {
	public DormManager findDormManager(DormManager dormManager);
	public List<DormManager> findDormManagerAll(Map<String,Object> map);
	public int addDormManager(DormManager dormManager);
	public int deleteDormManager(int id);
	public int updateDormManager(DormManager dormManager);
	public int findDormManagerPassword(DormManager dormManager);
	public int updateDormManagerPassword(DormManager dormManager);
	public Page getDormManagerNum(DormManager dormManager);
}
