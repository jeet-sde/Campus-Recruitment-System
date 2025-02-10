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

import com.project.model.Comp_CityVO;
import com.project.model.Comp_StateVO;
import com.project.service.Comp_CityService;
import com.project.service.Comp_StateService;
@Controller 
public class Comp_CityController {

	@Autowired 
	private Comp_CityService Comp_CityService;
	
	@Autowired
	private Comp_StateService Comp_StateService ;
	
	@GetMapping("admin/Comp_City")
	public ModelAndView city() {
		List<Comp_CityVO> Comp_CityList = Comp_CityService.findComp_City();
		List<Comp_StateVO> Comp_StateList = Comp_StateService.findStates();

		return new ModelAndView("admin/viewComp_City", "Comp_CityVO", new Comp_CityVO())
				.addObject("Comp_CityList", Comp_CityList).addObject("Comp_StateList", Comp_StateList);
	}
	
	@PostMapping("admin/saveComp_City")
	public ModelAndView saveCity(@ModelAttribute Comp_CityVO Comp_CityVO){
		this.Comp_CityService.saveComp_City(Comp_CityVO);
		return new ModelAndView("redirect:/admin/Comp_City", "Comp_CityVO", new Comp_CityVO());
	}
	@GetMapping("admin/deleteComp_City")
	public ModelAndView deleteComp_City(@RequestParam int id) {
		this.Comp_CityService.deleteComp_City(id);
		return new ModelAndView("redirect:/admin/Comp_City");
	}
	
	@GetMapping("admin/findByComp_City")
	public ResponseEntity<Comp_CityVO> findByComp_City(@RequestParam int id){
		List<Comp_CityVO> Comp_CityList = this.Comp_CityService.findByComp_City(id);
		return new ResponseEntity<Comp_CityVO>(Comp_CityList.get(0),HttpStatus.OK);
	}
	
	@GetMapping("admin/getCityByComp_State")
	public ResponseEntity<List> getCityByComp_State(@RequestParam int id){
		List<Comp_CityVO> Comp_CityList = this.Comp_CityService.getCityByComp_State(id);
		return new ResponseEntity<List>(Comp_CityList,HttpStatus.OK);
	}
	
}
