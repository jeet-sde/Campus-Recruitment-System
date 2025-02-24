package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.DAO.companyDAOImpl;
import com.project.model.InsertCompanyVO;
import com.project.model.companyVO;

@Service
@Transactional
public class companyServiceImpl implements companyService {

	@Autowired
	private com.project.DAO.companyDAO companyDAO;
	
	
	public List<companyVO> findAll() {
		return this.companyDAO.findAll();
	}

	@Override
	public void saveCompany(companyVO companyVO) {
		this.companyDAO.saveCompany(companyVO);
		
	}
	@Override
	public void saveCompanypage(InsertCompanyVO InsertCompanyVO) {
		this.companyDAO.saveComapanypage(InsertCompanyVO);
		
	}
	@Override
	public void deleteCompany(int id) {
		List<companyVO> ls = this.companyDAO.findByCompany(id);
		companyVO companyVO = ls.get(0);

		companyVO.setStatus(false);
		this.companyDAO.saveCompany(companyVO);
	}

	@Override
	public List<companyVO> findByCompany(int id) {
		return this.companyDAO.findByCompany(id);
	}

	@Override
	public int countCompany() {
	    return this.companyDAO.countAllCompanies();
	}

	@Override
	public void saveCompanyInUserDrive(companyVO companyVO) {
		this.companyDAO.saveCompanyInUserDrive(companyVO);
		
	}

}


