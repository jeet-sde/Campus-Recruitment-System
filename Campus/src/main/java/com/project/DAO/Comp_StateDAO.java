package com.project.DAO;

import java.util.List;

import com.project.model.Comp_StateVO;
import com.project.model.StateVO;


public interface Comp_StateDAO {

	List<Comp_StateVO> findStates();
	
	void saveState(Comp_StateVO Comp_StateVO);
	
	List<Comp_StateVO> findByState(int id);
}
