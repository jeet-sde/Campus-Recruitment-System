package com.project.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.service.UserService;
import com.project.service.companyService;

@RestController
public class DashboardController {

    @Autowired
    private UserService userService;

    @Autowired
    private companyService companyService;

    @GetMapping("/admin/dashboard/data")
    public Map<String, Integer> getDashboardData() {
        int totalStudents = userService.countUsers();  
        int totalCompanies = companyService.countCompany(); 
        
        Map<String, Integer> data = new HashMap<>();
        data.put("totalStudents", totalStudents);
        data.put("totalCompanies", totalCompanies);
        
        return data;
    }
}
