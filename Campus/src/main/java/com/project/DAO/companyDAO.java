package com.project.DAO;

import java.util.List;

import com.project.model.InsertCompanyVO;
import com.project.model.UserVO;
import com.project.model.companyVO;

public interface companyDAO {
	
	 List<companyVO> findAll();
	 
	 void saveCompany (companyVO companyVO);
	 
		List<companyVO> findByCompany(int id);

		int countAllCompanies();
		
		 void saveComapanypage (InsertCompanyVO InsertCompanyVO);

		void saveCompanyInUserDrive(companyVO companyVO);
		
 }
