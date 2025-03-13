package com.project.service;

import java.util.List;

import com.project.controller.InsertCompanyController;
import com.project.model.InsertCompanyVO;

public interface InsertCompanyService {
    void saveCompany1(InsertCompanyVO companyVO);
    List<InsertCompanyVO> findAll();
	List<InsertCompanyVO> getAllCompanies();
	static InsertCompanyController findById(Long companyId) {
		// TODO Auto-generated method stub
		return null;
	}
	static void save(InsertCompanyController company) {
		// TODO Auto-generated method stub
		
	}
	
	
}
