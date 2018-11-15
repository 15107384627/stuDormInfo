package com.studorm.service;

import java.util.List;
import java.util.Map;

import com.studorm.entity.Admin;
import com.studorm.entity.DormManager;

public interface DormManagerService {
	public DormManager findDormManager(DormManager dormManager);
	public List<DormManager> findDormManagerAll(Map<String,Object> map);
	public int addDormManager(DormManager dormManager);
	public int deleteDormManager(int id);
	public int updateDormManager(DormManager dormManager);
	public int findDormManagerPassword(DormManager dormManager);
	public int updateDormManagerPassword(DormManager dormManager);
	public Integer getDormManagerNum(DormManager dormManager);
}
