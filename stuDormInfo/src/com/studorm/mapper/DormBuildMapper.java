package com.studorm.mapper;

import java.util.List;
import java.util.Map;

import com.studorm.entity.DormBuild;

public interface DormBuildMapper {
	public DormBuild findDormBuild(DormBuild dormBuild);
	public List<DormBuild> findDormBuildAll(Map<String,Object> map);
	public int addDormBuild(DormBuild dormBuild);
	public int deleteDormBuild(int id);
	public int updateDormBuild(DormBuild dormBuild);
}
