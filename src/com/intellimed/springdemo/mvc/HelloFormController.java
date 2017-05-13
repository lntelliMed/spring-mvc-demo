package com.intellimed.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloFormController {

	@RequestMapping("/showForm")
	public String showForm(){
		return "hello-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm(){
		return "process-form";
	}
}
