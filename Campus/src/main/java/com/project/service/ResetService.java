package com.project.service;

import com.project.dto.PasswordchangeRequest;

public interface ResetService {

	public Boolean changePassword(PasswordchangeRequest  passwordRequest);
	
	Boolean resetPassword(String username, String newPassword);

}
