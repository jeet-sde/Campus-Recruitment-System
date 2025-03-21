package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.model.UpcomingCompanyVO;
import com.project.service.UpcomingCompanyService;


@Controller
public class UpcomingCompanyController {

	@Autowired
	private  UpcomingCompanyService  UpcomingCompanyService ;
	
	@GetMapping("admin/upcoming")
		public ModelAndView UpcomingCompany(){
			return new ModelAndView("admin/UpcomingCompany");
		}
	
	   @PostMapping("/admin/UpcomingCompanydetails")
	    public String saveCompany(@ModelAttribute UpcomingCompanyVO UpcomingCompanyVO, RedirectAttributes redirectAttributes) {
		   UpcomingCompanyService.saveCompany(UpcomingCompanyVO);
	        redirectAttributes.addFlashAttribute("successMessage", "Company details saved successfully!");
	        return "redirect:/user/index";
	    }

}

