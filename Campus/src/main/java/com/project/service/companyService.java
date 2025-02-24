package com.project.service;

import java.util.List;

import com.project.model.InsertCompanyVO;
import com.project.model.UserVO;
import com.project.model.companyVO;

public interface companyService {

	 List<companyVO> findAll();
	 
	 void saveCompany (companyVO companyVO);
	 
	 void deleteCompany(int id);

	 List<companyVO> findByCompany(int id);
	 
	 int countCompany();
	 
	 void saveCompanypage (InsertCompanyVO InsertCompanyVO);

	void saveCompanyInUserDrive(companyVO companyVO);
	 
}
