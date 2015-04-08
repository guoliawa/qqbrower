package com.precisetest.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.precisetest.services.*;;


@Controller
@RequestMapping("/functions")
public class functionController {
	@Resource
	private functionService functionService;
	
	
	@RequestMapping
	public String list(Model model) {
		model.addAttribute("functions", functionService.findAllFunctions());
		return "functions";
	}
	
	@RequestMapping("/function")
	public String getFunctionByName(@RequestParam("name") String functionName,
			Model model) {
		model.addAttribute("function", functionService.findFunctionByName(functionName));
		return "function";
	}
	
}
