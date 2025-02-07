package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AboutUsController {

	  @GetMapping("/admin/about-us")
	    public ModelAndView aboutUs() {
	        return new ModelAndView("admin/About_Us"); // Map to About_Us.jsp
	    }
}

