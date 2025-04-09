package com.project.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.DAO.InsertCompanyDAO;
import com.project.model.InsertCompanyVO;
import com.project.repository.InsertCompanyRepository;

@Service
@Transactional
public class InsertCompanyServiceImpl implements InsertCompanyService {


    @Autowired
    
    private InsertCompanyRepository insertCompanyRepository;

    @Autowired
    private InsertCompanyDAO companyDAO;
    
    @Autowired
    private InsertCompanyRepository companyRepository;

    @Transactional
    public void saveCompany1(InsertCompanyVO companyVO) {
        companyDAO.saveCompany1(companyVO);
    }

    @Transactional
    @Override	
    public List<InsertCompanyVO> findAll() {
        return companyDAO.findAll();
    }

	@Override
	public List<InsertCompanyVO> getAllCompanies() {
		// TODO Auto-generated method stub
		return companyRepository.findAll();
		
	}

	@Override
	public int countCompany() {
		return (int) insertCompanyRepository.count(); // Correctly counts total companies
    }
	}
	

