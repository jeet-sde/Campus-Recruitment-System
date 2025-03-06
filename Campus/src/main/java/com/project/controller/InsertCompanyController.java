package com.project.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.project.model.InsertCompanyVO;
import com.project.service.InsertCompanyService;

@Controller
public class InsertCompanyController {

    @Autowired
    private InsertCompanyService companyService;

    @GetMapping("/admin/insertCompany")
    public ModelAndView insertCompany() {
        return new ModelAndView("admin/InsertCompany"); // Load Insert Form JSP
    }

    @PostMapping("/admin/saveCompanydetails")
    public String saveCompany1(@ModelAttribute InsertCompanyVO insertCompanyVO, RedirectAttributes redirectAttributes) {
        companyService.saveCompany1(insertCompanyVO);

        redirectAttributes.addFlashAttribute("successMessage", "Company details saved successfully!");

        return "redirect:/user/drive"; // Redirect after saving
    }

    @GetMapping("/user/drive")
    public ModelAndView showDrivePage(@ModelAttribute("successMessage") String successMessage) {
        List<InsertCompanyVO> insertCompanyList = companyService.getAllCompanies();

        ModelAndView modelAndView = new ModelAndView("user/drive");
        modelAndView.addObject("InsertcompanyList", insertCompanyList);
        modelAndView.addObject("successMessage", successMessage);
        
        return modelAndView;
    }
  


}
