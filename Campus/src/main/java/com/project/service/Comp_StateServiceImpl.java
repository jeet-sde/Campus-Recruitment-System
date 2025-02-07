package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.DAO.Comp_StateDAO;

import com.project.model.Comp_StateVO;


@Service
@Transactional
public class Comp_StateServiceImpl implements Comp_StateService {
	
	
	@Autowired
	private Comp_StateDAO stateDAO;

	
	public List<Comp_StateVO> findStates() {
		return this.stateDAO.findStates();
	}

	public void saveState(Comp_StateVO Comp_StateVO) {
		this.stateDAO.saveState(Comp_StateVO);
		
	}
	
	public void deleteState(int id) {
		List<Comp_StateVO> ls = this.stateDAO.findByState(id);
		Comp_StateVO Comp_StateVO = ls.get(0);

		Comp_StateVO.setStatus(false);
		this.stateDAO.saveState(Comp_StateVO);
	}

	public List<Comp_StateVO> findByState(int id) {
		return this.stateDAO.findByState(id);
	}
}
