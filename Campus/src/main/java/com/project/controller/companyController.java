package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.StateVO;
import com.project.model.companyVO;
import com.project.service.companyService;

@Controller
public class companyController {

	@Autowired
	public companyService companyService ;
	
	@GetMapping("admin/company")
	public ModelAndView company() {
		List<companyVO> companyList = companyService.findAll();
		return new ModelAndView("admin/viewCompany", "companyVO", new companyVO()).addObject("companyList", companyList);

	}
	
	@PostMapping("admin/saveCompany")
	public ModelAndView saveCompany (@ModelAttribute companyVO companyVO)
	{
		this.companyService.saveCompany(companyVO);
		return new ModelAndView("redirect:/admin/company", "companyVO", new companyVO());
		
	}
	
	@GetMapping("admin/deleteCompany")
	public ModelAndView deleteCompany(@RequestParam int id)
	{
		this.companyService.deleteCompany(id);
		return new ModelAndView("redirect:/admin/company");
	}

	@GetMapping("admin/findByCompany")
	public ResponseEntity findByCompany(@RequestParam int id) {
		List<companyVO> companyList = this.companyService.findByCompany(id);
		return new ResponseEntity(companyList.get(0), HttpStatus.OK);

	}
	

}
