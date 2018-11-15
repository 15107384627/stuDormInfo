package com.studorm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.studorm.entity.DormBuild;
import com.studorm.mapper.DormBuildMapper;
import com.studorm.service.DormBuildService;

@Service
@Transactional
public class DormBuildServiceImpl implements DormBuildService{
	@Autowired DormBuildMapper dormBuildMapper;

	@Override
	public DormBuild findDormBuild(DormBuild dormBuild) {
		// TODO Auto-generated method stub
		return dormBuildMapper.findDormBuild(dormBuild);
	}

	@Override
	public List<DormBuild> findDormBuildAll(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dormBuildMapper.findDormBuildAll(map);
	}

	@Override
	public int addDormBuild(DormBuild dormBuild) {
		// TODO Auto-generated method stub
		return dormBuildMapper.addDormBuild(dormBuild);
	}

	@Override
	public int deleteDormBuild(int id) {
		// TODO Auto-generated method stub
		return dormBuildMapper.deleteDormBuild(id);
	}

	@Override
	public int updateDormBuild(DormBuild dormBuild) {
		// TODO Auto-generated method stub
		return dormBuildMapper.updateDormBuild(dormBuild);
	}
}
