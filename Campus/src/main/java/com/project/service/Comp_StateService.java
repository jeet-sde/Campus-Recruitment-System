package com.project.service;

import java.util.List;
	

import com.project.model.Comp_StateVO;


public interface Comp_StateService {

	List<Comp_StateVO> findStates();

	void deleteState(int id);

	void saveState(Comp_StateVO Comp_StateVO);

	List<Comp_StateVO> findByState(int id);


}
