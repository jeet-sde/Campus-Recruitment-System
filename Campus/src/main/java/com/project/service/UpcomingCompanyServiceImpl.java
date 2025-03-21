package com.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.model.UpcomingCompanyVO;

@Service
@Transactional
public class UpcomingCompanyServiceImpl implements UpcomingCompanyService {

	@Autowired
	private com.project.DAO.UpcomingCompanyDAO UpcomingCompanyDAO;
	
	@Override
	public void saveCompany(UpcomingCompanyVO upcomingCompanyVO) {
		 UpcomingCompanyDAO.saveCompany(upcomingCompanyVO);
		
	}

}
