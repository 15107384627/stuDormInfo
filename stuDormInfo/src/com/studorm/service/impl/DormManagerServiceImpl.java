package com.studorm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.studorm.entity.DormManager;
import com.studorm.entity.Page;
import com.studorm.mapper.DormManagerMapper;
import com.studorm.service.DormManagerService;

@Service
@Transactional
public class DormManagerServiceImpl implements DormManagerService{
	@Autowired
	DormManagerMapper dormManagerMapper;

	public DormManager findDormManager(DormManager dormManager) {
		return dormManagerMapper.findDormManager(dormManager);
	}

	public List<DormManager> findDormManagerAll(Map<String, Object> map) {
		return dormManagerMapper.findDormManagerAll(map);
	}

	public int addDormManager(DormManager dormManager) {
		return dormManagerMapper.addDormManager(dormManager);
	}

	public int deleteDormManager(int id) {
		return dormManagerMapper.deleteDormManager(id);
	}

	public int updateDormManager(DormManager dormManager) {
		return dormManagerMapper.updateDormManager(dormManager);
	}

	@Override
	public int findDormManagerPassword(DormManager dormManager) {
		// TODO Auto-generated method stub
		return dormManagerMapper.findDormManagerPassword(dormManager);
	}

	@Override
	public int updateDormManagerPassword(DormManager dormManager) {
		// TODO Auto-generated method stub
		return dormManagerMapper.updateDormManagerPassword(dormManager);
	}

	@Override
	public Integer getDormManagerNum(DormManager dormManager) {
		Page page = dormManagerMapper.getDormManagerNum(dormManager);
		return page.getNum();
	}
	
	
}
