package com.project.controller;

import com.project.model.LoginVO;
import com.project.service.LoginService;
import com.project.service.PasswordResetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class PasswordResetController {

    @Autowired
    private LoginService loginService;

    @Autowired
    private PasswordResetService passwordResetService;

    // ✅ Show the Password Reset Request Form
    @GetMapping("/request-password-reset-form")
    public String showPasswordResetRequestForm() {
        return "request-password-reset"; // JSP page where users enter their email
    }

    // ✅ Handle Password Reset Request Submission
    @PostMapping("/request-password-reset")
    public String requestPasswordReset(@RequestParam("email") String email) {
        LoginVO loginVO = loginService.findByUsername(email);
        if (loginVO != null) {
            passwordResetService.createPasswordResetToken(loginVO);
        }
        return "password-reset-email-sent"; // JSP confirmation page
    }

    // ✅ Show the Reset Password Form (When User Clicks the Link in Email)
    @GetMapping("/reset-password")
    public String showResetForm(@RequestParam("token") String token) {
        if (!passwordResetService.validateToken(token)) {
            return "invalid-token"; // JSP page for expired/invalid token
        }
        return "reset-password"; // JSP page for entering a new password
    }

    // ✅ Handle Password Reset Form Submission
    @PostMapping("/reset-password")
    public String resetPassword(@RequestParam("token") String token, @RequestParam("newPassword") String newPassword) {
        if (passwordResetService.updatePassword(token, newPassword)) {
            return "reset-success"; // JSP page for success message
        }
        return "reset-failure"; // JSP page for failure message
    }
}
