package com.intellimed.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping("/processFormVersionTwo")
	public String leltsShoutOut(HttpServletRequest request, Model model){
		String userName = request.getParameter("userName");
		String message = "Yo! " + userName.toUpperCase();
		
		model.addAttribute("message", message);
		
		return "process-form";
	}
}
