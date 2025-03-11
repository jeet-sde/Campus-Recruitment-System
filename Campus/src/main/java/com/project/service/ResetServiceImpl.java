package com.project.service;

import com.project.Util.commonUtil;
import com.project.dto.PasswordchangeRequest;
import com.project.model.UserVO;
import com.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class ResetServiceImpl implements ResetService {

    @Autowired
    private UserService userService;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;
    

    @Override
    public Boolean changePassword(PasswordchangeRequest passwordRequest) {
        UserVO loggedInUser = commonUtil.getLoggedInUser();

        if (loggedInUser == null || loggedInUser.getLoginVO() == null) {
            return false; // No logged-in user or no associated login details found
        }

        // Validate old password
        if (!passwordEncoder.matches(
                passwordRequest.getOldPassword(), 
                loggedInUser.getLoginVO().getPassword()
            )) {
            return false; // Old password mismatch
        }

        // Set new password
        String encodedNewPassword = passwordEncoder.encode(passwordRequest.getNewPassword());
        loggedInUser.getLoginVO().setPassword(encodedNewPassword);

        // Save updated user details
        userService.saveUser(loggedInUser);

        return true; // Password successfully changed
    }

	@Override
	public Boolean resetPassword(String username, String newPassword) {
		// TODO Auto-generated method stub
		return null;
	}
}
