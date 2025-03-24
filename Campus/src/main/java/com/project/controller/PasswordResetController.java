package com.project.controller;

import com.project.model.LoginVO;
import com.project.service.LoginService;
import com.project.service.PasswordResetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PasswordResetController {

    @Autowired
    private LoginService loginService;

    @Autowired
    private PasswordResetService passwordResetService;

    // Show Password Reset Request Form
  

    // Show Reset Password Form
    @GetMapping("/reset-password")
    public ModelAndView showResetForm(@RequestParam("token") String token) {
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("Received token: " + token); // Debugging
        boolean isValid = passwordResetService.validateToken(token);
        System.out.println("Token valid: " + isValid);

        if (!isValid) {
            modelAndView.setViewName("invalid-token"); // Expired/invalid token JSP page
        } else {
            modelAndView.setViewName("reset-password"); // Reset password JSP page
            modelAndView.addObject("token", token);
        }
        return modelAndView;
    }


    // Handle Password Reset Form Submission
    @PostMapping("/reset-password")
    public String resetPassword(@RequestParam("token") String token, 
                                @RequestParam("newPassword") String newPassword) {
        if (passwordResetService.updatePassword(token, newPassword)) {
            return "redirect:/login?resetSuccess=true";
        }
        return "forward:/reset-failure";
    }

    	
    @PostMapping("/request-password-reset")
    public String requestPasswordReset(@RequestParam("email") String email) {
        System.out.println("Received password reset request for: " + email); // Debugging log

        LoginVO loginVO = loginService.findByUsername(email);
        if (loginVO != null) {
            passwordResetService.createPasswordResetToken(loginVO);
            System.out.println("Token generated and email sent.");
        } else {
            System.out.println("User not found.");
        }
        return "reset-password"; // JSP page
    }


    @GetMapping("/reset-failure")
    public ModelAndView showResetFailure() {
        return new ModelAndView("reset-failure");
    }
}
