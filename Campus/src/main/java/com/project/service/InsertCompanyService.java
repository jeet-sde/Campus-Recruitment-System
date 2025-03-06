package com.project.service;

import java.util.List;
import com.project.model.InsertCompanyVO;

public interface InsertCompanyService {
    void saveCompany1(InsertCompanyVO companyVO);
    List<InsertCompanyVO> findAll();
	List<InsertCompanyVO> getAllCompanies();
	
	
}
