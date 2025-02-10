package com.project.DAO;

import java.util.List;

import com.project.model.CityVO;
import com.project.model.Comp_CityVO;

public interface Comp_CityDAO {

	List findComp_City();
	
	void saveComp_City(Comp_CityVO Comp_CityVO);
	
	List<Comp_CityVO> findByComp_City(int id);

	List<Comp_CityVO> getCityByComp_State(int id);
}
