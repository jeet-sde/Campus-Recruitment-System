package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.DAO.Comp_CityDAO;
import com.project.model.Comp_CityVO;

@Service
@Transactional
public class Comp_CityServiceImpl implements Comp_CityService{


	@Autowired
	private Comp_CityDAO Comp_CityDAO;
	
	
	
	public List<Comp_CityVO> findComp_City() {
		return this.Comp_CityDAO.findComp_City();
	}

	public void saveComp_City(Comp_CityVO Comp_CityVO) {
		this.Comp_CityDAO.saveComp_City(Comp_CityVO);
		
	}

	@Override
	public void deleteComp_City(int id) {
		List<Comp_CityVO> ls = this.Comp_CityDAO.findByComp_City(id);
		Comp_CityVO Comp_CityVO = ls.get(0);

		Comp_CityVO.setStatus(false);
		this.Comp_CityDAO.saveComp_City(Comp_CityVO);
	}
	
	@Override
	public List<Comp_CityVO> findByComp_City(int id) {
		return this.Comp_CityDAO.findByComp_City(id);
	}

	@Override
	public List<Comp_CityVO> getCityByComp_State(int id) {
		return this.Comp_CityDAO.getCityByComp_State(id);
	}
}
