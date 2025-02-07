package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.DAO.Comp_StateDAO;
import com.project.model.Comp_StateVO;
import com.project.model.StateVO;
import com.project.service.Comp_StateService;


@Controller 
public class Comp_StateController {

	@Autowired
	Comp_StateService Comp_stateService;
	
	@GetMapping("admin/Comp_State")
	public ModelAndView states() {
		List<Comp_StateVO> Comp_StateList = Comp_stateService.findStates();
		return new ModelAndView("admin/ViewComp_State", "Comp_StateVO", new Comp_StateVO()).addObject("Comp_StateList", Comp_StateList);
	}
	
	@PostMapping("admin/Comp_saveState")
	public ModelAndView saveState(@ModelAttribute Comp_StateVO Comp_StateVO){
		this.Comp_stateService.saveState(Comp_StateVO);
		return new ModelAndView("redirect:/admin/Comp_State", "Comp_StateVO", new Comp_StateVO());
	}
	
	@GetMapping("admin/Comp_deleteState")
	public ModelAndView deleteState(@RequestParam int id) {
		this.Comp_stateService.deleteState(id);
		return new ModelAndView("redirect:/admin/Comp_State");
	}
	
	@GetMapping("admin/Comp_findByState")
	public ResponseEntity<Comp_StateVO> findByState(@RequestParam int id){
		List<Comp_StateVO> Comp_StateList = this.Comp_stateService.findByState(id);
		return new ResponseEntity<Comp_StateVO>(Comp_StateList.get(0),HttpStatus.OK);
		
	}

	
}
