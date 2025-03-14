package com.project.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.DAO.LoginDAO;
import com.project.model.LoginVO;

@Service
@Transactional
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private LoginDAO loginDAO;

	@Override
	public LoginVO findByUsername(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(LoginVO loginVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateUser(LoginVO loginVO) {
		// TODO Auto-generated method stub
		
	}

}
