package com.project.service;

import com.project.model.LoginVO;
import com.project.model.PasswordResetTokenVO;
import com.project.repository.PasswordResetTokenRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import java.time.Instant;
import java.time.Duration;
import java.util.Date;
import java.util.Optional;
import java.util.UUID;

@Service
public class PasswordResetService {

    @Autowired
    private PasswordResetTokenRepository tokenRepository;

    @Autowired
    private LoginService loginService;

    @Autowired
    private EmailService emailService;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    public void createPasswordResetToken(LoginVO loginVO) {
        String token = UUID.randomUUID().toString();
        PasswordResetTokenVO resetToken = new PasswordResetTokenVO();
        resetToken.setToken(token);
        resetToken.setLoginVO(loginVO);
        resetToken.setExpiryDate(Date.from(Instant.now().plus(Duration.ofMinutes(15)))); // 15 min expiry

        tokenRepository.save(resetToken);

        // Send email
        String resetLink = "http://localhost:8080/reset-password?token=" + token;
        String subject = "Password Reset Request";
        String message = "Click the link below to reset your password:\n" + resetLink;

        emailService.sendEmail(loginVO.getUsername(), subject, message);
    }

    public boolean validateToken(String token) {
        return tokenRepository.findByToken(token)
                .map(resetToken -> resetToken.getExpiryDate().after(new Date()))
                .orElse(false);
    }

    public boolean updatePassword(String token, String newPassword) {
        Optional<PasswordResetTokenVO> optionalToken = tokenRepository.findByToken(token);

        if (optionalToken.isPresent()) {
            PasswordResetTokenVO resetToken = optionalToken.get();
            if (resetToken.getExpiryDate().before(new Date())) {
                return false;
            }

            LoginVO loginVO = resetToken.getLoginVO();
            loginVO.setPassword(passwordEncoder.encode(newPassword));
            loginService.save(loginVO); // Save updated password

            tokenRepository.delete(resetToken); // Remove token after successful reset
            return true;
        }
        return false;
    }

	public LoginVO getUserByToken(String token) {
		// TODO Auto-generated method stub
		return null;
	}
}
