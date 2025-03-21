package com.project.DAO;

import java.util.List;

import com.project.model.UpcomingCompanyVO;

public interface UpcomingCompanyDAO {
	
	 void saveCompany(UpcomingCompanyVO companyVO);
	    List<UpcomingCompanyVO> findAll();
	    
}
