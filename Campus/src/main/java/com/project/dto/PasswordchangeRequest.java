package com.project.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class PasswordchangeRequest {

	private String oldPassword;
	
	private String newPassword;

	public CharSequence getOldPassword() {
		// TODO Auto-generated method stub
		return null;
	}

	public CharSequence getNewPassword() {
		// TODO Auto-generated method stub
		return null;
	}



}
