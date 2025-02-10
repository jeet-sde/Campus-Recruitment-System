package com.project.service;

import java.util.List;

import com.project.model.CityVO;
import com.project.model.Comp_CityVO;

public interface Comp_CityService {

List<Comp_CityVO> findComp_City();
	
	void saveComp_City(Comp_CityVO Comp_CityVO);

	void deleteComp_City(int id);
	
	List<Comp_CityVO> findByComp_City(int id);

	List<Comp_CityVO> getCityByComp_State(int id);
}
