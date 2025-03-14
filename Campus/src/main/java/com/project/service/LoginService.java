package com.project.service;

import java.util.List;

import com.project.model.LoginVO;

public interface LoginService {

	LoginVO findByUsername(String email);

	public void save(LoginVO loginVO);

	void updateUser(LoginVO loginVO);


}
